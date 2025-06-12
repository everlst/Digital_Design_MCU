`timescale 1ns / 1ps
// ============================================================================
//  文件名 : hazard.v   ‒  Verilog-2001 版本
// ============================================================================
module hazard (
  input clk,
  input reset,

  // 比较结果
  input Match_1E_M,
  input Match_1E_W,
  input Match_2E_M,
  input Match_2E_W,
  input Match_12D_E,

  // 写回使能
  input RegWriteM,
  input RegWriteW,

  // 控制信号
  input BranchTakenE,
  input MemtoRegE,
  input PCWrPendingF,
  input PCSrcW,

  // 转发控制
  output reg [1:0] ForwardAE,
  output reg [1:0] ForwardBE,

  // 流水线握手
  output StallF,
  output StallD,
  output FlushD,
  output FlushE
);

  // --------------------------------------------------------------------
  // 内部连线
  // --------------------------------------------------------------------
  wire ldrStallD;

  // --------------------------------------------------------------------
  // Forwarding Logic
  // --------------------------------------------------------------------
  always @* begin
    // Forward A
    if (Match_1E_M && RegWriteM) ForwardAE = 2'b10;  // 来自 MEM
    else if (Match_1E_W && RegWriteW) ForwardAE = 2'b01;  // 来自 WB
    else ForwardAE = 2'b00;  // 不转发

    // Forward B
    if (Match_2E_M && RegWriteM) ForwardBE = 2'b10;
    else if (Match_2E_W && RegWriteW) ForwardBE = 2'b01;
    else ForwardBE = 2'b00;
  end

  // --------------------------------------------------------------------
  // Stalls & Flushes
  // --------------------------------------------------------------------
  assign ldrStallD = Match_12D_E & MemtoRegE;  // 载入冒险

  assign StallD    = ldrStallD;
  assign StallF    = ldrStallD | PCWrPendingF;

  assign FlushE    = ldrStallD | BranchTakenE;
  assign FlushD    = PCWrPendingF | PCSrcW | BranchTakenE;

endmodule
