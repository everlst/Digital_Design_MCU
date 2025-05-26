`timescale 1ns/1ps
module tb_ALU_top;

  /* DUT 端口 */
  reg  [31:0] A, B;
  reg  [1:0]  ALUOp;
  wire [31:0] Result;
  wire [3:0]  ALUFlags;           // {N,Z,C,V}

  ALU_top dut (
    .A(A), .B(B), .ALUOp(ALUOp),
    .Result(Result), .ALUFlags(ALUFlags)
  );

  /* --------------------------------------------------------------------------------
   * 软件参考模型：返回 {carry,result}
   * ALUOp 映射（与 DUT 保持一致）：
   *   00: ADD   01: SUB   10: AND   11: OR
   * -------------------------------------------------------------------------------- */
  function [32:0] model;
    input [31:0] a_i, b_i;
    input [1:0]  op_i;
    reg   [32:0] tmp;
  begin
    case (op_i)
      2'b00: tmp = a_i +  b_i;         // ADD
      2'b01: tmp = a_i + ~b_i + 1;     // SUB
      2'b10: tmp = {1'b0, a_i & b_i};  // AND
      2'b11: tmp = {1'b0, a_i | b_i};  // OR
      default: tmp = 33'h0;
    endcase
    model = tmp;                       // {carry,result}
  end
  endfunction

  /* 差分检查任务 */
  task check_one;
    input [31:0] a_i, b_i;
    input [1:0]  op_i;
  reg   [32:0]  ref;
  reg           exp_n, exp_z, exp_c, exp_v;
  reg   [31:0]  exp_res;
  begin
    /* 1. 驱动 */
    A = a_i; B = b_i; ALUOp = op_i; #1;

    /* 2. 软件期望 */
    ref      = model(a_i,b_i,op_i);
    exp_c    = ref[32];
    exp_res  = ref[31:0];
    exp_n    = exp_res[31];
    exp_z    = (exp_res==32'h0);
    case (op_i)
      2'b00: exp_v = (~(a_i[31]^b_i[31])) & (a_i[31]^exp_res[31]); // ADD ovf
      2'b01: exp_v =   (a_i[31]^b_i[31])  & (a_i[31]^exp_res[31]); // SUB ovf
      default: exp_v = 1'b0;
    endcase

    /* 3. 比对 */
    if (Result!==exp_res ||
        ALUFlags!={exp_n,exp_z,exp_c,exp_v})
    begin
      $display("ERROR @%0t  OP=%b  A=%h  B=%h",
               $time,op_i,a_i,b_i);
      $display(" Got : R=%h  N Z C V = %b",
               Result,ALUFlags);
      $display(" Exp : R=%h  N Z C V = %b",
               exp_res,{exp_n,exp_z,exp_c,exp_v});
      $finish;
    end
  end
  endtask

  /* 主测试流程 */
  integer k;
  initial begin
    /* ---- 指定向量 ---- */
    check_one(32'hFFFF_FFFF,32'h0F0F_0F0F,2'b10); // AND
    check_one(32'h8000_0000,32'h0000_0001,2'b11); // OR
    check_one(32'h0000_0001,32'h0000_0001,2'b00); // ADD
    check_one(32'h7FFF_FFFF,32'h0000_0001,2'b00); // ADD 溢出
    check_one(32'hFFFF_FFFF,32'h0000_0001,2'b00); // ADD 进位+零
    check_one(32'h0000_0003,32'h0000_0002,2'b01); // SUB 正常
    check_one(32'h0000_0000,32'h0000_0001,2'b01); // SUB 借位
    check_one(32'h8000_0000,32'h0000_0001,2'b01); // SUB 溢出

    /* ---- 随机回归 ---- */
    for (k=0;k<1000;k=k+1) begin
      check_one($random,$random,$random%4);
    end

    $display("---- ALL TESTS PASSED ----");
    $finish;
  end
endmodule
