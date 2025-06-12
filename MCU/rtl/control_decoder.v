module control_decoder (
    input [3:0] cond,
    input [3:0] ALUFlags,
    input [1:0] op,
    input [5:0] funct,
    input [3:0] rd,
    input clk,
    output pcsrc,
    output regwrite,
    output memwrite,
    output memtoreg,
    output alusrc,
    output [1:0] immsrc,
    output [1:0] regsrc,
    output [1:0] ALUcotrol  //变量声明见课本7.3.2节的图7-14
);
  wire [1:0] flagw;
  wire pcs;
  wire regw;
  wire memw;
  wire aluop;
  wire branch;
  wire [1:0] flagwrite;
  wire condex;
  reg [1:0] flags32;
  reg [1:0] flags10;  //临时变量声明见课本7.3.2节的图7-14

  wire [3:0] maindecoderin;
  wire [9:0] maindecoderout;
  assign maindecoderin[3:2] = op[1:0];
  assign maindecoderin[1] = funct[5];
  assign maindecoderin[0] = funct[0];
  assign branch = maindecoderout[9];
  assign memtoreg = maindecoderout[8];
  assign memw = maindecoderout[7];
  assign alusrc = maindecoderout[6];
  assign immsrc[1:0] = maindecoderout[5:4];
  assign regw = maindecoderout[3];
  assign regsrc[1:0] = maindecoderout[2:1];
  assign aluop = maindecoderout[0];  //主译码器的输入声明连接与输出声明连接

  assign maindecoderout=
    (maindecoderin== 4'b000x) ?10'b0000xx1001:
    (maindecoderin== 4'b001x) ?10'b0001001x01:
    (maindecoderin== 4'b01x0) ?10'b0x11010100:
    (maindecoderin==4'b01x1)  ?10'b0101011x00:
    (maindecoderin==4'b10xx) ?10'b1001100x10:
    10'bxxxxxxxxxx;  //主译码器译码   

  wire [5:0] aludecoderin;
  wire [3:0] aludecoderout;
  assign aludecoderin[5] = aluop;
  assign aludecoderin[4:0] = funct[4:0];
  assign ALUcotrol[1:0] = aludecoderout[3:2];
  assign flagw[1:0] = aludecoderout[1:0];  //alu译码器输入输出声明连接

  assign aludecoderout=
  (aludecoderin==6'b0xxxxx)?4'b0000:
  (aludecoderin==6'b101000)?4'b0000:
  (aludecoderin==6'b101001)?4'b0011:
  (aludecoderin==6'b100100)?4'b0100:
  (aludecoderin==6'b100101)?4'b0111:
  (aludecoderin==6'b100000)?4'b1000:
  (aludecoderin==6'b100001)?4'b1010:
  (aludecoderin==6'b111000)?4'b1100:
  (aludecoderin==6'b111001)?4'b1110:
  4'bxxxx;//alu译码器译码

  assign pcs = ((rd == 4'b1111) & regw) | branch;  //pc逻辑生成

  always @(posedge clk) begin
    if (flagwrite[1]) begin
      flags32[1] <= ALUFlags[3];
      flags32[0] <= ALUFlags[2];
    end else begin
      if (flagwrite[0]) begin
        flags10[1] <= ALUFlags[1];
        flags10[0] <= ALUFlags[0];
      end
    end
  end  //将ALUflag过寄存器

  assign flagwrite[1] = flagw[1] & condex;
  assign flagwrite[0] = flagw[0] & condex;  //生成flagwrite

  wire N;
  wire Zero;
  wire C;
  wire V;
  assign N = flags32[1];
  assign Zero = flags32[0];
  assign C = flags10[1];
  assign V = flags10[0];
  wire [15:0] maycondex;
  assign maycondex[0]  = Zero;
  assign maycondex[1]  = ~Zero;
  assign maycondex[2]  = C;
  assign maycondex[3]  = ~C;
  assign maycondex[4]  = N;
  assign maycondex[5]  = ~N;
  assign maycondex[6]  = V;
  assign maycondex[7]  = ~V;
  assign maycondex[8]  = (~Zero) & C;
  assign maycondex[9]  = Zero | (~C);
  assign maycondex[10] = ~(N ^ V);
  assign maycondex[11] = N ^ V;
  assign maycondex[12] = (~Zero) & (~(N ^ V));
  assign maycondex[13] = Zero | (N ^ V);
  assign maycondex[14] = 1'b0;
  assign maycondex[15] = 1'b0;
  wire [3:0] op_condex;
  assign op_condex[3] = N;
  assign op_condex[2] = Zero;
  assign op_condex[1] = C;
  assign op_condex[0] = V;  //通过cond计算助记符

  decoder4bit decoder4bit_condex (
      .op(op_condex),
      .mayout(maycondex),
      .out(condex)
  );  //使用译码器完成condex计算

  assign pcsrc = pcs & condex;
  assign regwrite = regw & condex;
  assign memwrite = memw & condex;  //由condex控制是否输出
endmodule
