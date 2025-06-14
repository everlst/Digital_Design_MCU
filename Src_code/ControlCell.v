`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/11 19:01:25
// Design Name: 
// Module Name: ControlCell
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


module ControlCell (
  input wire        sys_clk,
  input wire        sys_rst_n,
  input wire [31:0] InstrD,
  input wire [ 3:0] ALUFlags,

  output wire       R3D_valid,
  output wire       MemWriteD,
  output reg        MemWriteE,
  output wire [1:0] RegSrcD,        //控制两个读地址来源于InstrD的哪几位
  output wire [1:0] ImmSrcD,        //控制立即数的模式
  output wire       ALUSrcD,
  output reg        ALUSrcE,        //控制ALU的SrcB的来源是寄存器还是立即数
  output reg [2:0]  ALUControlE,    //Dp操作指令的种类
  output reg        MemWriteM,      //控制内存的读写 
  output reg        MemtoRegM,
  output reg        MemtoRegW,      //决定结果是来自内存读取出的数据还是ALU的计算结果
  output wire       Mul_CtrlD,
  output wire       BranchTakenE,
  output reg        PCSrcW,         //控制PC指针受否连续加四
  output reg        RegWriteM,
  output reg        RegWriteW,
  output reg        MemtoRegE,
  output wire       RegWrite,
  output wire       PCWrPendingF
);
  //ControlCell需要输出十个信号

  //Decoder步骤的变量   
  wire PCSrcD, RegWriteD, No_WriteD, BranchD, MemtoRegD;
  wire [1:0] FlagWriteD;
  wire [2:0] ALUControlD;

  //Execute步骤的变量
  reg PCSrcE, RegWriteE, No_WriteE, BranchE;
  reg [ 1:0] FlagWriteE;
  reg [ 3:0] FlagsE;
  reg [31:0] InstrE;
  wire PCSrc, MemWrite;
  wire [3:0] Flags_in;

  //Memory W/R的变量
  reg        PCSrcM;

  //Wr_reg的变量
  // reg             MemtoRegW;

  decoder decoder_inst1 (
    .InstrD(InstrD),

    .R3D_valid  (R3D_valid),
    .FlagWriteD (FlagWriteD),  //[1:0]
    .PCSrcD     (PCSrcD),
    .RegWriteD  (RegWriteD),
    .MemWriteD  (MemWriteD),
    .MemtoRegD  (MemtoRegD),
    .ALUSrcD    (ALUSrcD),
    .ImmSrcD    (ImmSrcD),
    .RegSrcD    (RegSrcD),
    .BranchD    (BranchD),
    .No_WriteD  (No_WriteD),
    .Mul_CtrlD  (Mul_CtrlD),
    .ALUControlD(ALUControlD)
  );


  condition_logic condition_logic_inst1 (
    .InstrE    (InstrE),
    .ALUFlags  (ALUFlags),
    .FlagWriteE(FlagWriteE),
    .BranchE   (BranchE),
    .PCSrcE    (PCSrcE),
    .MemtoRegE (MemtoRegE),
    .RegWriteE (RegWriteE),
    .MemWriteE (MemWriteE),
    .No_WriteE (No_WriteE),
    .FlagsE    (FlagsE),

    .PCSrc       (PCSrc),
    .RegWrite    (RegWrite),
    .MemWrite    (MemWrite),
    .Flags_in    (Flags_in),
    .BranchTakenE(BranchTakenE)
  );

  //Execute步骤的赋值
  always @(posedge sys_clk or posedge sys_rst_n) begin
    if (sys_rst_n == 1'b1) PCSrcE <= 1'b0;
    else PCSrcE <= PCSrcD;
  end

  always @(posedge sys_clk or posedge sys_rst_n) begin
    if (sys_rst_n == 1'b1) RegWriteE <= 1'b0;
    else RegWriteE <= RegWriteD;
  end

  always @(posedge sys_clk or posedge sys_rst_n) begin
    if (sys_rst_n == 1'b1) MemtoRegE <= 1'b0;
    else MemtoRegE <= MemtoRegD;
  end

  always @(posedge sys_clk or posedge sys_rst_n) begin
    if (sys_rst_n == 1'b1) MemWriteE <= 1'b0;
    else MemWriteE <= MemWriteD;
  end

  always @(posedge sys_clk or posedge sys_rst_n) begin
    if (sys_rst_n == 1'b1) ALUControlE <= 3'd0;
    else ALUControlE <= ALUControlD;
  end

  always @(posedge sys_clk or posedge sys_rst_n) begin
    if (sys_rst_n == 1'b1) BranchE <= 1'b0;
    else BranchE <= BranchD;
  end

  always @(posedge sys_clk or posedge sys_rst_n) begin
    if (sys_rst_n == 1'b1) ALUSrcE <= 1'b0;
    else ALUSrcE <= ALUSrcD;
  end

  always @(posedge sys_clk or posedge sys_rst_n) begin
    if (sys_rst_n == 1'b1) FlagWriteE <= 2'd0;
    else FlagWriteE <= FlagWriteD;
  end

  always @(posedge sys_clk or posedge sys_rst_n) begin
    if (sys_rst_n == 1'b1) InstrE <= 32'd0;
    else InstrE <= InstrD;
  end

  always @(posedge sys_clk or posedge sys_rst_n) begin
    if (sys_rst_n == 1'b1) No_WriteE <= 1'b0;
    else No_WriteE <= No_WriteD;
  end

  always @(posedge sys_clk or posedge sys_rst_n) begin
    if (sys_rst_n == 1'b1) FlagsE <= 4'b0000;
    else FlagsE <= Flags_in;
  end

  //Memory W/R的变量赋值
  always @(posedge sys_clk or posedge sys_rst_n) begin
    if (sys_rst_n == 1'b1) PCSrcM <= 1'b0;
    else PCSrcM <= PCSrc;
  end

  always @(posedge sys_clk or posedge sys_rst_n) begin
    if (sys_rst_n == 1'b1) RegWriteM <= 1'b0;
    else RegWriteM <= RegWrite;
  end

  always @(posedge sys_clk or posedge sys_rst_n) begin
    if (sys_rst_n == 1'b1) MemWriteM <= 1'b0;
    else MemWriteM <= MemWrite;
  end

  always @(posedge sys_clk or posedge sys_rst_n) begin
    if (sys_rst_n == 1'b1) MemtoRegM <= 1'b0;
    else MemtoRegM <= MemtoRegE;
  end

  //Wr_reg的变量赋值
  always @(posedge sys_clk or posedge sys_rst_n) begin
    if (sys_rst_n == 1'b1) PCSrcW <= 1'b0;
    else PCSrcW <= PCSrcM;
  end

  always @(posedge sys_clk or posedge sys_rst_n) begin
    if (sys_rst_n == 1'b1) RegWriteW <= 1'b0;
    else RegWriteW <= RegWriteM;
  end

  always @(posedge sys_clk or posedge sys_rst_n) begin
    if (sys_rst_n == 1'b1) MemtoRegW <= 1'b0;
    else MemtoRegW <= MemtoRegM;
  end

  assign PCWrPendingF = PCSrcD | PCSrcE | PCSrcM;

endmodule
