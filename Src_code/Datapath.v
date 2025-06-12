`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/12 14:50:13
// Design Name: 
// Module Name: Datapath
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


module Datapath (
    input   wire            sys_clk,
    input   wire            sys_rst_n,
    input   wire            Mul_CtrlD,
    input   wire            Mul_CtrlE,
    input   wire    [1:0]   RegSrcD,//控制register_file的都寄存器地址
    input   wire    [1:0]   ImmSrcD,//控制立即数的三种扩展方式
    input   wire            ALUSrcE,
    input   wire            ALUSrcD,
    input   wire    [2:0]   ALUControlE,
    input   wire            MemtoRegW,
    input   wire            PCSrcW,
    input   wire    [31:0]  InstrD,//经过打拍之后的指令信号
    input   wire    [31:0]  ReadDataM,
    input   wire            BranchTakenE,
    input   wire            RegWriteW,
    input   wire            MemWriteD,
    input   wire            MemWriteE,
    input   wire            R3D_valid,
    input   wire            MemtoRegM,
   
    input   wire            StallF,
    input   wire            FlushE,
    input   wire    [1:0]   ForwardAE,
    input   wire    [1:0]   ForwardBE,
    input   wire    [1:0]   ForwardCE,
    
    output  wire    [3:0]   ALUFlags,
    output  wire    [31:0]  ALUResultM,
    output  reg     [31:0]  WriteDataM,
    output  reg     [31:0]  PCF,
    output  wire    [6:0]   Match
);

wire    [31:0]  PCNext, PCPlus4F, PCPlus8D, PCNext0;//对PC指针进行自增4和自增8的操作
wire    [31:0]  ExtImmD, ResultW;//立即数拓展的输出
wire    [31:0]  SrcAD, SrcBE,RsD, RD1D,RD2D,SrcCE;
wire    [3:0]   WA3D,RA1D,RA2D,RA3D;
reg     [31:0]  SrcAE;
wire    [7:0]   Shift_order;
wire    [31:0]  ALUResultE;
wire    [31:0]  ResultM2,mul_result,Result_mul;

reg     [31:0]  RsE, RD2E;
reg     [3:0]   WA3W,WA3M, WA3E, RA1E, RA2E, RA3E;
reg     [31:0]  ExtImmE;
reg     [31:0]  InstrE;

reg     [31:0]  RsE_Plus,WriteData,ResultM,ResultM2_E,WriteDataD,RsE_P;
wire    [31:0]  WriteDataE,ShammData;
reg     [31:0]  ReadDataW,ALUResultW,RD1E_P;
reg             FlushE_E,FlushE_M,FlushE_W,Mul_CtrlM;
wire    [31:0]  ResultE;




always@(*) begin
    case(ForwardAE)
        2'b00: RD1E_P = RD1D;
        2'b10: RD1E_P = ResultE;
        2'b01: RD1E_P = ResultM2;
        default: RD1E_P = RD1D;
    endcase
end

always@(*) begin
    case(ForwardBE)
        2'b00: WriteDataD = RD2D;
        2'b10: WriteDataD = ResultE;
        2'b01: WriteDataD = ResultM2;
        default: WriteDataD = RD2D;
    endcase
end

always@(*) begin
    case(ForwardCE)
        2'b00: RsE_P = RsD;
        2'b10: RsE_P = ResultE;
        2'b01: RsE_P = ResultM2;
        default: RsE_P = RsD;
    endcase
end

always@(posedge sys_clk or posedge sys_rst_n) begin
    if(sys_rst_n == 1'b1)
        WriteData <= 32'd0;
    else if(FlushE == 1'b1)
        WriteData <= 32'd0;
    else
        WriteData <= WriteDataD;
end

always@(posedge sys_clk or posedge sys_rst_n) begin
    if(sys_rst_n == 1'b1)
        RsE_Plus <= 32'd0;
    else if(FlushE == 1'b1)
        RsE_Plus <= 32'd0;
    else
        RsE_Plus <= RsE_P;
end


assign PCNext = (PCSrcW) ? ResultW : PCPlus4F;//PC指针无需自增了则程序运行结束PC处即输出结果
assign PCNext0 = (BranchTakenE) ? ALUResultE : PCNext;
assign PCPlus4F = PCF + 32'd4;
assign PCPlus8D = PCPlus4F;
always@(posedge sys_clk or posedge sys_rst_n) begin
    if(sys_rst_n == 1'b1)
        PCF <= 32'd0;
    else if(StallF == 1'b0)
        PCF <= PCNext0;
    else
        PCF <= PCF;
end

assign RA1D   = (RegSrcD[0]) ? 4'd15 : InstrD[19:16];//第一个操作数(寄存器)
assign RA2D   = (RegSrcD[1]) ? InstrD[15:12] : InstrD[3:0];//第二个操作数(寄存器)只有在指令为STR时将destination寄存器作为读地址
assign RA3D   = (MemWriteD) ? InstrD[15:12] : InstrD[11:8];
assign WA3D   = (Mul_CtrlD) ? InstrD[19:16] : InstrD[15:12];

assign SrcAD = (Mul_CtrlD) ? RsE_P : RD1D;
assign SrcBE = (ALUSrcE) ? ExtImmE : ShammData;
assign SrcCE = ShammData;
assign ResultW = (MemtoRegW) ? ReadDataW : ALUResultW;
assign Shift_order = (Mul_CtrlE)? 8'd0 : InstrE[11:4];
assign WriteDataE = RsE_Plus;
assign ALUResultM = (Mul_CtrlM)?Result_mul:ResultM;
assign ResultM2 = (MemtoRegM) ? ReadDataM : ALUResultM;
assign ResultE = (Mul_CtrlE)?mul_result:ALUResultE;
    
always@(posedge sys_clk or posedge sys_rst_n) begin
    if(sys_rst_n == 1'b1)
        SrcAE <= 32'd0;
    else if(FlushE == 1'b1)
        SrcAE <= 32'd0;
    else
        SrcAE <= SrcAD;
end


Register_File Register_File_inst1(
    .sys_clk    (sys_clk),
    .sys_rst_n  (sys_rst_n),
    .RA1        (RA1D),
    .RA2        (RA2D),
    .RA3        (RA3D),
    .WA3        (WA3W),
    .WE3        (RegWriteW & ~FlushE_W),
    .WD3        (ResultW),
    .R15        (PCPlus8D),
    
    .RD1        (RD1D),
    .RD2        (RD2D),
    .RD3        (RsD)
);

ExtImm Immnum1(
    .Instr     (InstrD[23:0]),
    .ImmSrc     (ImmSrcD),
    
    .ExtImm     (ExtImmD)
);
     
ALU alu_inst1(
    .clk_in     (sys_clk),
    .rst_p      (sys_rst_n),
    .SrcA       (SrcAE),
    .SrcB       (SrcBE),
    .SrcC       (SrcCE),
    .ALUControl (ALUControlE),
    
    .Result     (ALUResultE),
    .Result_mul (Result_mul),
    .mul_result (mul_result),
    .ALUFlags   (ALUFlags)
);    



Shift shift_inst1(  
    .Shift_order(Shift_order),
    .WriteData  (WriteData),
    .Register   (RsE_Plus[7:0]),
    
    .ShammData  (ShammData)
); 

//Excute操作数打拍

always@(posedge sys_clk or posedge sys_rst_n) begin
    if(sys_rst_n == 1'b1)
        RsE <= 32'd0;
    else if(FlushE == 1'b1)
        RsE <= 32'd0;
    else
        RsE <= RsD;
end

always@(posedge sys_clk or posedge sys_rst_n) begin
    if(sys_rst_n == 1'b1)
        RD2E <= 32'd0;
    else if(FlushE == 1'b1)
        RD2E <= 32'd0;
    else
        RD2E <= RD2D;
end

always@(posedge sys_clk or posedge sys_rst_n) begin
    if(sys_rst_n == 1'b1)
        ExtImmE <= 32'd0;
    else if(FlushE == 1'b1)
        ExtImmE <= 32'd0;
    else
        ExtImmE <= ExtImmD;
end

always@(posedge sys_clk or posedge sys_rst_n) begin
    if(sys_rst_n == 1'b1)
        WA3E <= 4'd0;
    else if(FlushE == 1'b1)
        WA3E <= 4'd0;
    else
        WA3E <= WA3D;
end

always@(posedge sys_clk or posedge sys_rst_n) begin
    if(sys_rst_n == 1'b1)
        InstrE <= 32'd0;
    else if(FlushE == 1'b1)
        InstrE <= 32'd0;
    else
        InstrE <= InstrD;
end

//Mem_R/D操作数打拍
always@(posedge sys_clk or posedge sys_rst_n) begin
    if(sys_rst_n == 1'b1)
        ResultM <= 32'd0;
    else 
        ResultM <= ALUResultE;
end
 
always@(posedge sys_clk or posedge sys_rst_n) begin
    if(sys_rst_n == 1'b1)
        WriteDataM <= 32'd0;
    else 
        WriteDataM <= WriteDataE;
end 

always@(posedge sys_clk or posedge sys_rst_n) begin
    if(sys_rst_n == 1'b1)
        WA3M <= 4'd0;
    else
        WA3M <= WA3E;
end


//W操作数打拍
always@(posedge sys_clk or posedge sys_rst_n) begin
    if(sys_rst_n == 1'b1)
        WA3W <= 4'd0;
    else
        WA3W <= WA3M;
end

always@(posedge sys_clk or posedge sys_rst_n) begin
    if(sys_rst_n == 1'b1)
        ALUResultW <= 32'd0;
    else
        ALUResultW <= ALUResultM;
end

always@(posedge sys_clk or posedge sys_rst_n) begin
    if(sys_rst_n == 1'b1)
        ReadDataW <= 32'd0;
    else
        ReadDataW <= ReadDataM;
end

//match信号相关的打拍
always@(posedge sys_clk or posedge sys_rst_n) begin
    if(sys_rst_n == 1'b1)
        RA1E <= 4'd0;
    else if(FlushE == 1'b1)
        RA1E <= 4'd0;
    else
        RA1E <= RA1D;
end

always@(posedge sys_clk or posedge sys_rst_n) begin
    if(sys_rst_n == 1'b1)
        RA2E <= 4'd0;
    else if(FlushE == 1'b1)
        RA2E <= 4'd0;
    else
        RA2E <= RA2D;
end

always@(posedge sys_clk or posedge sys_rst_n) begin
    if(sys_rst_n == 1'b1)
        RA3E <= 4'd0;
    else if(FlushE == 1'b1)
        RA3E <= 4'd0;
    else
        RA3E <= RA3D;
end

always@(posedge sys_clk or posedge sys_rst_n) begin
    if(sys_rst_n == 1'b1)
        ResultM2_E <= 32'd0;
    else if(FlushE == 1'b1)
        ResultM2_E <= 32'd0;
    else
        ResultM2_E <= ResultM2;
end

assign Match[5] = (RA1D == WA3E && ~FlushE_E);
assign Match[4] = (RA1D == WA3M && ~FlushE_M);
assign Match[3] = (RA2D == WA3E && ~FlushE_E);
assign Match[2] = (RA2D == WA3M && ~FlushE_M);
assign Match[1] = (RA3D == WA3E && ~FlushE_E);
assign Match[0] = (RA3D == WA3M && ~FlushE_M);
assign Match[6] = (RA1D == WA3E && ~FlushE_E) | (RA2D == WA3E && ~InstrD[26] && ~FlushE_E) | (RA3D == WA3E && (R3D_valid | MemWriteD) && ~FlushE_E);

//assign Macth = {Match_123D_E,Match_1E_M,Match_1E_W,Match_2E_M,Match_2E_W,Match_3E_M,Match_3E_W};
always@(posedge sys_clk or posedge sys_rst_n) begin
    if(sys_rst_n == 1'b1)
        FlushE_E <= 1'b0;
    else
        FlushE_E <= FlushE;
end

always@(posedge sys_clk or posedge sys_rst_n) begin
    if(sys_rst_n == 1'b1)
        FlushE_M <= 1'b0;
    else
        FlushE_M <= FlushE_E;
end

always@(posedge sys_clk or posedge sys_rst_n) begin
    if(sys_rst_n == 1'b1)
        FlushE_W <= 1'b0;
    else
        FlushE_W <= FlushE_M;
end

always@(posedge sys_clk or posedge sys_rst_n) begin
    if(sys_rst_n == 1'b1)
        Mul_CtrlM <= 1'b0;
    else
        Mul_CtrlM <= Mul_CtrlE;
end

endmodule
