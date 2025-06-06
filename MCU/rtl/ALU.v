//====================================================================
// 32-bit ALU  (Verilog-2001)
// ────────────────────────────────────────────────────────────────────
// op[1:0]
//   00 : a + b
//   01 : a - b   (用 ~b + 1 实现二补减法)
//   10 : a & b
//   11 : a | b
// ALUFlags = {N, Z, C, V}
//   N : 结果最高位         (Negative)
//   Z : 结果是否为 0       (Zero)
//   C : 加/减运算产生进位  (Carry)           ─ 仅在加/减时有效
//   V : 加/减运算溢出标志  (Overflow, 2's  complement) ─ 仅在加/减时有效
//====================================================================
module ALU32bit (
  input  wire [31:0] a,
  input  wire [31:0] b,
  input  wire [ 1:0] op,
  output reg  [31:0] result,      // 用 reg，因为在 always 块里赋值
  output wire [ 3:0] ALUFlags
);

  //----------------------------------------------------------------
  // ① 条件求反 b，再做一条 33-bit 加法得到 sum_ext
  //----------------------------------------------------------------
  wire [31:0] condinvb = (op[0]) ? ~b : b;  // 01->sub 时取反
  wire [32:0] sum_ext = {1'b0, a} + {1'b0, condinvb} + op[0];
  wire [31:0] sum = sum_ext[31:0];
  wire        carry_add = sum_ext[32];  // 33-位进位

  //----------------------------------------------------------------
  // ② 根据 op 产生 result
  //----------------------------------------------------------------
  always @* begin
    case (op)
      2'b10:   result = a & b;
      2'b11:   result = a | b;
      default: result = sum;  // 00(add) or 01(sub)
    endcase
  end

  //----------------------------------------------------------------
  // ③ 计算标志位
  //----------------------------------------------------------------
  wire neg = result[31];  // N
  wire zero = (result == 32'b0);  // Z
  wire carry = (op[1] == 1'b0)  // 仅在 add/sub 时有效
  & carry_add;  // C
  wire overflow = (op[1] == 1'b0)  // 仅在 add/sub 时有效
  & ~(a[31] ^ b[31] ^ op[0])  // 前两数同号
  & (a[31] ^ result[31]);  // 与结果异号  → V

  assign ALUFlags = {neg, zero, carry, overflow};
endmodule
