//--------------------------------------------------------------------
// 32-bit ALU with Kogge-Stone adder & status flags N V C Z
//--------------------------------------------------------------------
module ALU_top (
  input  wire        clk,     // 新增
  input  wire        rst,     // 新增
  input  wire [31:0] A,
  input  wire [31:0] B,
  input  wire [ 1:0] ALUOp,   // 00:AND 01:OR 10:ADD 11:SUB
  output reg  [31:0] Result,  // 运算结果（寄存器）
  output reg  [3:0]  ALUFlags // {N, V, C, Z}（寄存器）
);

  //---------------- 0) 鎿嶄綔鐮佽瘧鐮? ----------------
  wire is_and = (ALUOp == 2'b00);
  wire is_or  = (ALUOp == 2'b01);
  wire is_add = (ALUOp == 2'b10);
  wire is_sub = (ALUOp == 2'b11);

  wire [31:0] and_res = A & B;
  wire [31:0] or_res  = A | B;

  wire [31:0] B_sel = B ^ {32{is_sub}};
  wire        cin   = is_sub;

  wire [31:0] addsub_res;
  wire        cout;
  pre_adder_32 u_pre32 (
    .a   (A),
    .b   (B_sel),
    .cin (cin),
    .s   (addsub_res),
    .cout(cout)
  );

  wire [31:0] result_comb =
        ({32{is_and}}            & and_res    ) |
        ({32{is_or }}            & or_res     ) |
        ({32{is_add | is_sub}}   & addsub_res);

  wire overflow_add = (~(A[31] ^ B[31])) & (A[31] ^ addsub_res[31]);
  wire overflow_sub = (A[31] ^ B[31]) & (A[31] ^ addsub_res[31]);
  wire ovf = (is_sub & overflow_sub) | (~is_sub & overflow_add);

  wire N = result_comb[31];
  wire C = (is_add | is_sub) & cout;
  wire V = (is_add | is_sub) & ovf;
  wire Z = ~|result_comb;

  // 打一拍输出
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      Result    <= 32'd0;
      ALUFlags  <= 4'd0;
    end else begin
      Result    <= result_comb;
      ALUFlags  <= {N, V, C, Z};
    end
  end


endmodule


