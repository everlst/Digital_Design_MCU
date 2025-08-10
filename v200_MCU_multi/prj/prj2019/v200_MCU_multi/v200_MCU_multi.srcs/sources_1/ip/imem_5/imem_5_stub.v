// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Fri Jul  4 02:42:47 2025
// Host        : FB47 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               y:/Code/Digital_Design_MCU/v200_MCU_multi/prj/prj2019/v200_MCU_multi/v200_MCU_multi.srcs/sources_1/ip/imem_5/imem_5_stub.v
// Design      : imem_5
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2019.2" *)
module imem_5(a, spo)
/* synthesis syn_black_box black_box_pad_pin="a[5:0],spo[31:0]" */;
  input [5:0]a;
  output [31:0]spo;
endmodule
