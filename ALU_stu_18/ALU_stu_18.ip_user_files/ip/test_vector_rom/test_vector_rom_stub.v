// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Fri May 23 15:47:26 2025
// Host        : LAPTOP-TFKU3BS3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/MCU-experiment/ALU_stu_18/ALU_stu_18.srcs/sources_1/ip/test_vector_rom/test_vector_rom_stub.v
// Design      : test_vector_rom
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2019.2" *)
module test_vector_rom(clka, ena, addra, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,addra[6:0],douta[65:0]" */;
  input clka;
  input ena;
  input [6:0]addra;
  output [65:0]douta;
endmodule
