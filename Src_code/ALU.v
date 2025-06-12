`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/13 09:36:23
// Design Name: 
// Module Name: ALU
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


module ALU(
    input   wire            clk_in,
    input   wire            rst_p,
    input   wire    [31:0]  SrcA,
    input   wire    [31:0]  SrcB,
    input   wire    [31:0]  SrcC,
    input   wire    [2:0]   ALUControl,
    
    output  reg     [31:0]  Result,
    output  reg     [31:0]  Result_mul,
    output  wire    [31:0]  mul_result,
    output  wire    [3:0]   ALUFlags
);
    
reg     [32:0]  CUR_RESULT;
wire    [15:0]  A;
wire    [7:0]   C;
wire    [23:0]  MUL_Result;
    
    
always @(*) begin
    case(ALUControl)
        3'b000:
            begin
            CUR_RESULT = SrcA + SrcB;
            Result = CUR_RESULT[31:0];
            end
        3'b001:
            begin
            CUR_RESULT = SrcA - SrcB;
            Result = CUR_RESULT[31:0];
            end
        3'b010: Result = SrcA & SrcB;
        3'b011: Result = SrcA | SrcB;
        3'b100: Result = SrcB;
        3'b110: Result = SrcA ^ SrcB;
        3'b101: 
            begin
            CUR_RESULT = SrcA - SrcB;
            Result = CUR_RESULT[31:0];
            end
        default: Result = 32'd0;
    endcase 
end
    
assign ALUFlags[3] = Result[31];//Negative
assign ALUFlags[2] = Result ? 1'b0 : 1'b1;//Zero
assign ALUFlags[1] = ~ALUControl[1] & CUR_RESULT[32];//Carry
assign ALUFlags[0] = ~ALUControl[1] & (SrcA[31] ^ SrcB[31] ^ ~ALUControl[0]) & (SrcA[31] ^ Result[31]);//Overflow
assign A = SrcA[15:0];
assign C = SrcC[7:0];
assign mul_result = {{8{MUL_Result[23]}},MUL_Result[23:0]};

always@(posedge clk_in or posedge rst_p) begin
    if(rst_p == 1'b1)
        Result_mul <= 32'd0;
    else
        Result_mul <= mul_result;
end


mult_gen_0 mul (
  .A(A),  // input wire [31 : 0] A
  .B(C),  // input wire [31 : 0] B
  .P(MUL_Result)  // output wire [63 : 0] P
);
//assign mul_result = $signed(A)*$signed(C);
//assign MUL_Result = SrcA * SrcC;   
    
endmodule
