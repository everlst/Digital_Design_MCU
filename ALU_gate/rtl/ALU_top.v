//--------------------------------------------------------------------
// 32-bit ALU with Kogge-Stone adder & status flags N V C Z
//--------------------------------------------------------------------
module ALU_top (
  input  wire [31:0] A,
  input  wire [31:0] B,
  input  wire [ 1:0] ALUOp,   // 00:AND 01:OR 10:ADD 11:SUB
  output wire [31:0] Result,  // 运算结果
  output wire        N,       // Negative, Result[31]
  output wire        V,       // oVerflow（有符号溢出）
  output wire        C,       // Carry（ADD/SUB 的 Cout）
  output wire        Z        // Zero flag
);

  //---------------- 0) 操作码译码 ----------------
  wire        is_and = (ALUOp == 2'b00);
  wire        is_or = (ALUOp == 2'b01);
  wire        is_add = (ALUOp == 2'b10);
  wire        is_sub = (ALUOp == 2'b11);

  //---------------- 1) 逻辑运算 ------------------
  wire [31:0] and_res = A & B;
  wire [31:0] or_res = A | B;

  //---------------- 2) 加/减 ---------------------
  wire [31:0] B_sel = B ^ {32{is_sub}};  // SUB: 取反
  wire        cin = is_sub;  // SUB: +1

  wire [31:0] addsub_res;
  wire        cout;
  pre_adder_32 u_pre32 (
    .a   (A),
    .b   (B_sel),
    .cin (cin),
    .s   (addsub_res),
    .cout(cout)
  );

  //---------------- 3) 溢出检测 ------------------
  wire overflow_add = (~(A[31] ^ B[31])) & (A[31] ^ addsub_res[31]);
  wire overflow_sub = (A[31] ^ B[31]) & (A[31] ^ addsub_res[31]);
  wire ovf = (is_sub & overflow_sub) | (~is_sub & overflow_add);

  //---------------- 4) 结果拼接 -------------------
  assign Result =
        ({32{is_and}}            & and_res    ) |
        ({32{is_or }}            & or_res     ) |
        ({32{is_add | is_sub}}   & addsub_res);

  //---------------- 5) 状态标志 ------------------
  assign N = Result[31];  // 最高位
  assign C = (is_add | is_sub) & cout;
  assign V = (is_add | is_sub) & ovf;
  assign Z = ~|Result;  // 全 0 为 1

endmodule
