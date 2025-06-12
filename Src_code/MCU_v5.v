`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/11 18:45:51
// Design Name: 
// Module Name: MCU_v5
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


module MCU_v5(
    input   wire           sys_clk, 
    input   wire           sys_rst_n,
    input   wire    [31:0] Instr,
    input   wire    [31:0] ReadDataM,
    
    output  wire           MemWriteM,
    output  wire    [31:0] PCF,
    output  wire    [31:0] ALUResultM,
    output  wire    [31:0] WriteDataM,
    output  wire           MemtoRegM
);

wire    [3:0]   ALUFlags;
wire            ALUSrcE,ALUSrcD,MemtoRegW,PCSrcW,Mul_CtrlD,BranchTakenE,R3D_valid,RegWriteE;
wire    [1:0]   RegSrcD, ImmSrcD;
wire    [2:0]   ALUControlE;

wire            StallF,StallD;
wire            FlushE,FlushD;
wire    [1:0]   ForwardAE, ForwardBE, ForwardCE; 
wire            RegWriteM, RegWriteW;
wire            MemtoRegE;
wire    [6:0]   Match;
wire            PCWrPendingF;
reg     [31:0]  InstrD;
reg             Mul_CtrlE;

reg     [15:0]  counter;

ControlCell ctrl1(
    .sys_clk        (sys_clk), 
    .sys_rst_n      (sys_rst_n), 
    .InstrD         (InstrD),
    .ALUFlags       (ALUFlags),
    
    .R3D_valid      (R3D_valid  ),
    .MemWriteD      (MemWriteD  ),
    .MemWriteE      (MemWriteE  ),
    .RegSrcD        (RegSrcD    ),     
    .ImmSrcD        (ImmSrcD    ),    
    .ALUSrcE        (ALUSrcE    ),    
    .ALUSrcD        (ALUSrcD    ), 
    .ALUControlE    (ALUControlE),   
    .MemWriteM      (MemWriteM  ), 
    .MemtoRegM      (MemtoRegM  ), 
    .MemtoRegW      (MemtoRegW  ),  
    .Mul_CtrlD      (Mul_CtrlD  ),
    .BranchTakenE   (BranchTakenE),
    .PCSrcW         (PCSrcW     ),
    .RegWriteM      (RegWriteM),
    .RegWriteW      (RegWriteW),
    .MemtoRegE      (MemtoRegE),
    .RegWrite       (RegWriteE),
    .PCWrPendingF   (PCWrPendingF)
);

Datapath data_path1(
    .sys_clk        (sys_clk),
    .sys_rst_n      (sys_rst_n),
    .Mul_CtrlD      (Mul_CtrlD),
    .Mul_CtrlE      (Mul_CtrlE),
    .RegSrcD        (RegSrcD),//控制register_file的都寄存器地址
    .ImmSrcD        (ImmSrcD),//控制立即数的三种扩展方式
    .ALUSrcE        (ALUSrcE),
    .ALUSrcD        (ALUSrcD),   
    .ALUControlE    (ALUControlE),
    .MemtoRegW      (MemtoRegW),
    .PCSrcW         (PCSrcW),
    .InstrD         (InstrD),//经过打拍之后的指令信号
    .ReadDataM      (ReadDataM),
    .BranchTakenE   (BranchTakenE),
    .RegWriteW      (RegWriteW),
    .MemWriteD      (MemWriteD  ),
    .MemWriteE      (MemWriteE  ),
    .R3D_valid      (R3D_valid   ),
    .MemtoRegM      (MemtoRegM  ), 
    
    
    .StallF         (StallF   ),
    .FlushE         (FlushE   ),
    .ForwardAE      (ForwardAE),
    .ForwardBE      (ForwardBE),
    .ForwardCE      (ForwardCE),
    
    .ALUFlags       (ALUFlags),
    .ALUResultM     (ALUResultM),
    .WriteDataM     (WriteDataM),
    .PCF            (PCF    ),
    .Match          (Match)
);

Hazard_Unit  hazard_unit_inst1( 
    .sys_clk        (sys_clk), 
    .sys_rst_n      (sys_rst_n), 
    .MemtoRegE      (MemtoRegE   ),
    .RegWriteW      (RegWriteW   ),
    .RegWriteM      (RegWriteM   ),
    .Match          (Match       ),
    .PCWrPendingF   (PCWrPendingF),
    .BranchTakenE   (BranchTakenE),
    .PCSrcW         (PCSrcW      ),
    .RegWriteE      (RegWriteE   ),
                   
    .FlushE         (FlushE      ),
    .FlushD         (FlushD      ),
    .StallD         (StallD      ),
    .StallF         (StallF      ),
    .ForwardAE      (ForwardAE   ),
    .ForwardBE      (ForwardBE   ),
    .ForwardCE      (ForwardCE   )
);


always@(posedge sys_clk or posedge sys_rst_n) begin
    if(sys_rst_n == 1'b1)
        InstrD <= 32'd0;
    else if(FlushD == 1'b1)
        InstrD <= 32'd0;
    else if(StallD == 1'b0)
        InstrD <= Instr;
    else
        InstrD <= InstrD;
end

always@(posedge sys_clk or posedge sys_rst_n) begin
    if(sys_rst_n == 1'b1)
        Mul_CtrlE <= 1'b0;
    else if(FlushD == 1'b1)
        Mul_CtrlE <= 1'b0;
    else
        Mul_CtrlE <= Mul_CtrlD;
end


endmodule
