//--------------------------------------------------------------------
// 32-bit ALU with Kogge-Stone adder & status flags N V C Z
//--------------------------------------------------------------------
module ALU_top (
  input  wire [31:0] A,
  input  wire [31:0] B,
  input  wire [ 1:0] ALUOp,  // 00:AND 01:OR 10:ADD 11:SUB
  output wire [31:0] Result, // 运算结果

  output wire [3:0] ALUFlags
);

  //---------------- 0) 操作码译码 ----------------
  wire        is_and = ALUOp[1] & ~ALUOp[0];
  wire        is_or = ALUOp[1] & ALUOp[0];
  wire        is_add = ~ALUOp[1] & ~ALUOp[0];
  wire        is_sub = ~ALUOp[1] & ALUOp[0];

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
  wire ovf = (is_sub & (A[31] ^ B[31]) & (A[31] ^ addsub_res[31])) | (~is_sub & (~(A[31] ^ B[31])) & (A[31] ^ addsub_res[31]));

  //---------------- 4) 结果拼接 -------------------
  assign Result =
        ({32{is_and}}            & and_res    ) |
        ({32{is_or }}            & or_res     ) |
        ({32{is_add | is_sub}}   & addsub_res);

  //---------------- 5) 状态标志 ------------------

  // 将单独的标志位组合成一个4位输出 - 高到低顺序为NZCV
  assign ALUFlags = {
    Result[31], ~|Result, (is_add | is_sub) & cout, (is_add | is_sub) & ovf
  };  // [3:0] = {Negative, Zero, Carry, oVerflow}

endmodule
