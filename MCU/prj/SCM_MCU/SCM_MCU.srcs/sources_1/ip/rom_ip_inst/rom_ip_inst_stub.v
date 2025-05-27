// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon May 26 19:12:08 2025
// Host        : LAPTOP-C3UU883L running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               f:/vivado-project/MCU/prj/SCM_MCU/SCM_MCU.srcs/sources_1/ip/rom_ip_inst/rom_ip_inst_stub.v
// Design      : rom_ip_inst
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2019.2" *)
module rom_ip_inst(clka, rsta, addra, douta, rsta_busy)
/* synthesis syn_black_box black_box_pad_pin="clka,rsta,addra[31:0],douta[31:0],rsta_busy" */;
  input clka;
  input rsta;
  input [31:0]addra;
  output [31:0]douta;
  output rsta_busy;
endmodule
