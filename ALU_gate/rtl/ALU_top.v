//--------------------------------------------------------------------
// 32-bit ALU with Kogge-Stone adder & status flags N V C Z
//--------------------------------------------------------------------
module alu (
  input  wire [31:0] a,
  input  wire [31:0] b,
  input  wire [ 1:0] ALUControl,   // 00:AND 01:OR 10:ADD 11:SUB
  output wire [31:0] Result,  // 运算结果
   output wire[3:0]ALUFlags        
);

 wire        N;       // Negative, Result[31]
  wire        V;       // oVerflow（有符号溢出�?
  wire        C;       // Carry（ADD/SUB �? Cout�?
 wire        Z;
  //---------------- 0) 操作码译�? ----------------
  wire        is_and = (ALUControl == 2'b00);
  wire        is_or = (ALUControl == 2'b01);
  wire        is_add = (ALUControl == 2'b10);
  wire        is_sub = (ALUControl == 2'b11);

  //---------------- 1) 逻辑运算 ------------------
  wire [31:0] and_res =a & b;
  wire [31:0] or_res = a | b;

  //---------------- 2) �?/�? ---------------------
  wire [31:0] b_sel =b ^ {32{is_sub}};  // SUB: 取反
  wire        cin = is_sub;  // SUB: +1

  wire [31:0] addsub_res;
  wire        cout;
  pre_adder_32 u_pre32 (
    .a   (a),
    .b   (b_sel),
    .cin (cin),
    .s   (addsub_res),
    .cout(cout)
  );

  //---------------- 3) 溢出�?�? ------------------
  wire overflow_add = (~(a[31] ^ b[31])) & (a[31] ^ addsub_res[31]);
  wire overflow_sub = (a[31] ^ b[31]) & (a[31] ^ addsub_res[31]);
  wire ovf = (is_sub & overflow_sub) | (~is_sub & overflow_add);

  //---------------- 4) 结果拼接 -------------------
  assign Result =
        ({32{is_and}}            & and_res    ) |
        ({32{is_or }}            & or_res     ) |
        ({32{is_add | is_sub}}   & addsub_res);

  //---------------- 5) 状�?�标�? ------------------
  assign N = Result[31];  // �?高位
  assign C = (is_add | is_sub) & cout;
  assign V = (is_add | is_sub) & ovf;
  assign Z = ~|Result;  // �? 0 �? 1
assign ALUFlags[3]=N;
assign ALUFlags[2]=Z;
assign ALUFlags[1]=C;
assign ALUFlags[0]=V;
endmodule
