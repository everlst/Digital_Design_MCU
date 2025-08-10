// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Jul  4 20:43:29 2025
// Host        : everlasting running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               f:/GitHub/Digital_Design_MCU-main/v200_MCU_multi/prj/v200_MCU_multi.gen/sources_1/ip/ila_0/ila_0_stub.v
// Design      : ila_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2020.2" *)
module ila_0(clk, probe0, probe1, probe2, probe3)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[5:0],probe1[15:0],probe2[15:0],probe3[0:0]" */;
  input clk;
  input [5:0]probe0;
  input [15:0]probe1;
  input [15:0]probe2;
  input [0:0]probe3;
endmodule
