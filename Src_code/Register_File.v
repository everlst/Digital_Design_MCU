`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/12 15:52:03
// Design Name: 
// Module Name: Register_File
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


module Register_File(
    input   wire            sys_clk,
    input   wire            sys_rst_n,
    input   wire    [3:0]   RA1, RA2, WA3 ,RA3,
    input   wire            WE3,        
    input   wire    [31:0]  WD3,        
    input   wire    [31:0]  R15,            //PC寄存器       
    
    output  wire    [31:0]  RD1,RD2,RD3     //读取出的数据
);

reg [31:0]  REG_FIlE    [13:0];

integer i;
always@(negedge sys_clk or posedge sys_rst_n) begin
    if(sys_rst_n == 1'b1) begin
        for (i = 0; i < 13; i = i+1) begin
            REG_FIlE[i] = 32'd0;
        end
        REG_FIlE[13] = 32'b0000_0000_0000_0000_0000_0000_1011_0101;
    end
    else if(WE3) 
        REG_FIlE[WA3] <= WD3;
end//写操作
        
assign RD1 = (RA1 == 4'd15) ? R15 : REG_FIlE[RA1];
assign RD2 = (RA2 == 4'd15) ? R15 : REG_FIlE[RA2];
assign RD3 = (RA3 == 4'd15) ? R15 : REG_FIlE[RA3]; 
//读操作
   
endmodule

