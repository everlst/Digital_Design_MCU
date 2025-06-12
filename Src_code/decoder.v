`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/11 19:09:24
// Design Name: 
// Module Name: decoder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module decoder(
    input   wire    [31:0]  InstrD,
    
    output  wire            R3D_valid,
    output  reg     [1:0]   FlagWriteD,
    output  wire            PCSrcD,
    output  wire            RegWriteD, 
    output  wire            MemWriteD, 
    output  wire            MemtoRegD, 
    output  wire            ALUSrcD,
    output  wire    [1:0]   ImmSrcD,
    output  wire    [1:0]   RegSrcD,
    output  wire            BranchD,
    output  reg             No_WriteD,
    output  reg             Mul_CtrlD,
    output  reg     [2:0]   ALUControlD    
);
    
wire            ALUOp;
reg     [9:0]   controls;

 
always@(*) begin
    case(InstrD[27:26])
        //Funct[0]是S位表示操作指令是否需要条件判断
        //Funct[5]是I位表示操作数是寄存器还是立即数
        2'b00: begin//Data-Processing 将ALUop赋值为1
            if(InstrD[25]) controls=10'b0000101001;//操作数为立即数，ALUSrcD赋值为1作为选通器的选择信号
            else controls=10'b0000001001;//操作数存在寄存器中
        end
        //Funct[0]是Load位表示操作指令是STR还是LDR
        //Funct[5]是I_bar位表示操作数是寄存器还是立即数
        2'b01: begin//Memory 
            if(InstrD[20]) begin
                if(InstrD[25])
                    controls=10'b0001011000;//LDR，RegWriteD可写
                else
                    controls=10'b0001111000;//LDR，RegWriteD可写
            end
            else begin
                if(InstrD[25])
                    controls=10'b1001000100;//STR，MemWriteD可写
                else
                    controls=10'b1001100100;//STR，MemWriteD可写
            end
        end
        2'b10:
            controls=10'b0110100010;//Branch
        default:
            controls=10'bx;//Unimplement
        endcase
    end
    
assign {RegSrcD,ImmSrcD,ALUSrcD,MemtoRegD,RegWriteD,MemWriteD,BranchD,ALUOp}=controls;
assign R3D_valid = ALUControlD == 3'b111;
    
//ALU Decoder
always@(*) begin
    if(ALUOp) begin
        case(InstrD[24:21])
            4'b0100: ALUControlD=3'b000;//ADD
            4'b0010: ALUControlD=3'b001;//SUB
            4'b1101: ALUControlD=3'b100;//MOV,LSL,LSR
            4'b1010: ALUControlD=3'b101;//CMP
            4'b0000: ALUControlD= (InstrD[4])? 3'b111 : 3'b010;//AND
            4'b1100: ALUControlD=3'b011;//ORR
            //4'b0000: ALUControlD=3'b111;//MUL
            4'b0001: ALUControlD=3'b110;//EOR
            default: ALUControlD=3'b000;
        endcase
        FlagWriteD[1] = InstrD[20];//N,Z
        FlagWriteD[0] = InstrD[20] & (~ALUControlD[1]);//C,V
        No_WriteD = ALUControlD[2] & ALUControlD[0] &(~ALUControlD[1]);
        Mul_CtrlD = ALUControlD[0] & ALUControlD[1] & ALUControlD[2];
    end
    else begin
        ALUControlD = 3'b000;
        FlagWriteD=2'b00;
        No_WriteD = 1'b0;
        Mul_CtrlD = 1'b0;
    end
end

assign PCSrcD = BranchD | (RegWriteD & (InstrD[15:12]==4'd15));//当指令为B/BL时候，或者操作寄存器为R15时，需要对PC指针进行修改
    
endmodule

/*
N  当用两个补码表示的带符号数进行运算时，N=1表示运算的结果为负数；N=0表示运算的结果为正数或零.
Z  Z=1表示运算的结果为零，Z=0表示运算的结果非零。
C  可以有4种方法设置C的值：
   加法运算（包括CMN）：当运算结果产生了进位时（无符号数溢出），C=1，否则C=0。
   减法运算（包括CMP）：当运算时产生了借位时（无符号数溢出），C=0，否则C=1。
   对于包含移位操作的非加/减运算指令，C为移出值的最后一位。
   对于其它的非加/减运算指令，C的值通常不会改变。
V  可以有2种方法设置V的值：
   对于加减法运算指令，当操作数和运算结果为二进制的补码表示的带符号数时，V=1表示符号位溢出
   对于其它的非加/减运算指令，V的值通常不会改变。
*/