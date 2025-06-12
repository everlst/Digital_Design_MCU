`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/11 20:45:11
// Design Name: 
// Module Name: condition_logic
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


module condition_logic(      
    input   wire    [31:0]  InstrE      ,
    input   wire    [3:0]   ALUFlags    ,
    input   wire    [1:0]   FlagWriteE  ,
    input   wire            BranchE     ,
    input   wire            PCSrcE      , 
    input   wire            MemtoRegE   ,
    input   wire            RegWriteE   ,
    input   wire            MemWriteE   ,
    input   wire            No_WriteE   ,
    input   wire    [3:0]   FlagsE      ,
    
    output  wire            PCSrc       , 
    output  wire            RegWrite    , 
    output  wire            MemWrite    ,
    output  wire    [3:0]   Flags_in    ,
    output  wire            BranchTakenE
);

wire    [1:0]   FlagWrite;
wire    [1:0]   Flags;
wire            CondEx;

/*always@(posedge sys_clk or posedge sys_rst_n) begin
    if(sys_rst_n == 1'b1)
        Flags[3:2] <= 2'b00;
    else if(FlagWrite[1] == 1'b1)
        Flags[3:2] <= ALUFlags[3:2];
end

always@(posedge sys_clk or posedge sys_rst_n) begin
    if(sys_rst_n == 1'b1)
        Flags[1:0] <= 2'b00;
    else if(FlagWrite[0] == 1'b1)
        Flags[1:0] <= ALUFlags[1:0];
end
*/
assign Flags_in[3:2] = (Flags[1])?ALUFlags[3:2]:2'b00;
assign Flags_in[1:0] = (Flags[0])?ALUFlags[1:0]:2'b00;

assign Flags = FlagWriteE & {2{CondEx}};

assign RegWrite = CondEx & RegWriteE & (~No_WriteE);
assign MemWrite = MemWriteE & CondEx;
assign PCSrc = PCSrcE & CondEx;
assign BranchTakenE = CondEx & BranchE;

Condition_check Condition_check_inst1
(
    .InstrE (InstrE)  ,
    .Flags  (FlagsE) ,
    .CondEx (CondEx)
);

endmodule
