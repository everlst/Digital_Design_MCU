// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Jun 16 21:44:15 2025
// Host        : FB47 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               y:/Code/Digital_Design_MCU/v20_MCU_FULL_RW/prj/MCU_FULL_RW/MCU_FULL_RW.srcs/sources_1/ip/ila_0/ila_0_stub.v
// Design      : ila_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2019.2" *)
module ila_0(clk, probe0, probe1, probe2)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[15:0],probe1[15:0],probe2[19:0]" */;
  input clk;
  input [15:0]probe0;
  input [15:0]probe1;
  input [19:0]probe2;
endmodule
