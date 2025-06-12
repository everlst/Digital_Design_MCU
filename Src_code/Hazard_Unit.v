`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/19 21:14:50
// Design Name: 
// Module Name: Hazard_Unit
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


module Hazard_Unit(
    input   wire            sys_clk, 
    input   wire            sys_rst_n,
    input   wire            MemtoRegE,
    input   wire            RegWriteW,
    input   wire            RegWriteM,
    input   wire    [6:0]   Match,
    input   wire            PCWrPendingF,
    input   wire            BranchTakenE,
    input   wire            PCSrcW,
    input   wire            RegWriteE,
    
    output  wire            FlushE,
    output  wire            FlushD,
    output  wire            StallD,
    output  wire            StallF,
    output  reg     [1:0]   ForwardAE,
    output  reg     [1:0]   ForwardBE,
    output  reg     [1:0]   ForwardCE
);

//assign Macth = {Match_123D_E,Match_1E_M,Match_1E_W,Match_2E_M,Match_2E_W,Match_3E_M,Match_3E_W};
wire        LDRstall;

assign  LDRstall = Match[6] & MemtoRegE;

always@(*) begin
    if(Match[5] & RegWriteE) ForwardAE = 2'b10; 
    else if(Match[4] & RegWriteM) ForwardAE = 2'b01;
    else ForwardAE = 2'b00;
end

always@(*) begin
    if(Match[3] & RegWriteE) ForwardBE = 2'b10; 
    else if(Match[2] & RegWriteM) ForwardBE = 2'b01;
    else ForwardBE = 2'b00;
end

always@(*) begin
    if(Match[1] & RegWriteE) ForwardCE = 2'b10;
    else if(Match[0] & RegWriteM) ForwardCE = 2'b01;
    else ForwardCE = 2'b00;
end

assign StallD = LDRstall;
assign StallF = LDRstall | PCWrPendingF;
assign FlushE = LDRstall | BranchTakenE;
assign FlushD = PCWrPendingF | PCSrcW | BranchTakenE;

endmodule
