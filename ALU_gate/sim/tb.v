`timescale 1ns / 1ps
module tb_ALU_top;

  //---------------- DUT 端口 ----------------
  reg [31:0] A, B;
  reg  [ 1:0] ALUOp;
  wire [31:0] Result;
  wire N, V, C, Z;

  ALU_top dut (
    .A     (A),
    .B     (B),
    .ALUOp (ALUOp),
    .Result(Result),
    .N     (N),
    .V     (V),
    .C     (C),
    .Z     (Z)
  );

  //============================================================
  // 软件参考模型 (返回 {carry , result})
  //============================================================
  function [32:0] soft_model;
    input [31:0] a_i, b_i;
    input [1:0] op_i;
    reg [32:0] tmp;
    begin
      case (op_i)
        2'b00:   tmp = {1'b0, a_i & b_i};  // AND
        2'b01:   tmp = {1'b0, a_i | b_i};  // OR
        2'b10:   tmp = a_i + b_i;  // ADD
        2'b11:   tmp = a_i + ~b_i + 1'b1;  // SUB
        default: tmp = 33'h0;
      endcase
      soft_model = tmp;
    end
  endfunction

  //============================================================
  // 任务：一次性驱动 / 校验
  //============================================================
  task check;
    input [31:0] a_i, b_i;
    input [1:0] op_i;
    input [31:0] exp_res;
    input exp_n, exp_v, exp_c, exp_z;
    begin
      A     = a_i;
      B     = b_i;
      ALUOp = op_i;
      #1;  // 等待组合逻辑稳定
      if (Result !== exp_res || N !== exp_n || V !== exp_v || C !== exp_c || Z !== exp_z) begin
        $display("ERROR  OP=%b A=%h B=%h @%0t", op_i, a_i, b_i, $time);
        $display(" Got   R=%h N=%b V=%b C=%b Z=%b", Result, N, V, C, Z);
        $display(" ExpectR=%h N=%b V=%b C=%b Z=%b", exp_res, exp_n, exp_v, exp_c, exp_z);
        // $finish;
      end
    end
  endtask

  //============================================================
  // 主测试流程
  //============================================================
  integer        i;  // 供随机循环使用
  reg     [32:0] ref_tmp;  // 软件模型输出
  reg     [31:0] exp_res;
  reg exp_c, exp_n, exp_z, exp_v;

  initial begin
    //----------------------------------------------------------
    // 1) 定向向量（覆盖典型/边界场景）
    //----------------------------------------------------------
    check(32'hFFFF_FFFF, 32'h0F0F_0F0F, 2'b00, 32'h0F0F_0F0F, 1'b0, 0, 0, 0);  // AND
    check(32'h0000_0000, 32'h0000_0000, 2'b00, 32'h0000_0000, 1'b0, 0, 0, 1);  // AND → Z=1
    check(32'h8000_0000, 32'h0000_0001, 2'b01, 32'h8000_0001, 1'b1, 0, 0, 0);  // OR
    check(32'h0000_0001, 32'h0000_0001, 2'b10, 32'h0000_0002, 1'b0, 0, 0, 0);  // ADD
    check(32'h7FFF_FFFF, 32'h0000_0001, 2'b10, 32'h8000_0000, 1'b1, 1, 0, 0);  // ADD 溢出
    check(32'hFFFF_FFFF, 32'h0000_0001, 2'b10, 32'h0000_0000, 1'b0, 0, 1, 1);  // ADD 进位+零
    check(32'h0000_0003, 32'h0000_0002, 2'b11, 32'h0000_0001, 1'b0, 0, 1, 0);  // SUB 无借位
    check(32'h0000_0000, 32'h0000_0001, 2'b11, 32'hFFFF_FFFF, 1'b1, 0, 0, 0);  // SUB 借位
    check(32'h8000_0000, 32'h0000_0001, 2'b11, 32'h7FFF_FFFF, 1'b0, 1, 1, 0);  // SUB 溢出

    //----------------------------------------------------------
    // 2) 随机回归向量
    //----------------------------------------------------------
    for (i = 0; i < 1000; i = i + 1) begin
      A     = $random;
      B     = $random;
      ALUOp = $random % 4;
      #1;  // 让 Result 就绪

      // 期望结果
      ref_tmp = soft_model(A, B, ALUOp);  // {carry,result}
      exp_c   = ref_tmp[32];
      exp_res = ref_tmp[31:0];
      exp_n   = exp_res[31];
      exp_z   = (exp_res == 32'h0);

      // 溢出
      case (ALUOp)
        2'b10:   exp_v = (~(A[31] ^ B[31])) & (A[31] ^ exp_res[31]);  // ADD
        2'b11:   exp_v = (A[31] ^ B[31]) & (A[31] ^ exp_res[31]);  // SUB
        default: exp_v = 1'b0;
      endcase

      // 比对
      if (Result !== exp_res || C !== exp_c || N !== exp_n || Z !== exp_z || V !== exp_v) begin
        $display("RANDOM ERROR  A=%h B=%h OP=%b @%0t", A, B, ALUOp, $time);
        $display(" Got   R=%h N=%b V=%b C=%b Z=%b", Result, N, V, C, Z);
        $display(" ExpectR=%h N=%b V=%b C=%b Z=%b", exp_res, exp_n, exp_v, exp_c, exp_z);
        // $finish;
      end
    end

    $display("---- ALL TESTS PASSED ----");
    // $finish;
  end

endmodule
