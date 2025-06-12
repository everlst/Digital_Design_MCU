`timescale 1ns / 1ps
// ============================================================================
//  文件名 : alu.v   ‒  Verilog-2001 版本
// ============================================================================

module alu (
  input [31:0] a,
  input [31:0] b,
  input [ 1:0] ALUControl,

  output reg [31:0] Result,   // 在 always 块里赋值 ➜ reg
  output     [ 3:0] ALUFlags
);

  // --------------------------------------------------------------------
  // 内部连线
  // ------------------------------------------- -------------------------
  wire [31:0] condinvb;
  wire [32:0] sum;
  wire neg, zero, carry, overflow;

  // 条件取反 (+1 用 ALUControl[0] 作 Cin)
  assign condinvb = ALUControl[0] ? ~b : b;
  assign sum      = {a[31], a} + {condinvb[31], condinvb} + ALUControl[0];
  /*////--------------------------//////////
  注意位宽一定要匹配，否则最高位就自己瞎变了
*/
  // --------------------------------------------------------------------
  // 主运算：与 / 或 / 加减
  // --------------------------------------------------------------------
  always @* begin
    casex (ALUControl[1:0])
      2'b0?:   Result = sum[31:0];  // 0x/1x : add / sub
      2'b10:   Result = a & b;  // 2  : AND
      2'b11:   Result = a | b;  // 3  : OR
      default: Result = 32'hXXXX_XXXX;
    endcase
  end

  // --------------------------------------------------------------------
  // 标志位生成
  // --------------------------------------------------------------------
  assign neg      = Result[31];
  assign zero     = (Result == 32'b0);
  assign carry    = (ALUControl[1] == 1'b0) & sum[32];
  assign overflow = (ALUControl[1] == 1'b0) & ~(a[31] ^ b[31] ^ ALUControl[0]) & (a[31] ^ sum[31]);

  assign ALUFlags = {neg, zero, carry, overflow};

endmodule
