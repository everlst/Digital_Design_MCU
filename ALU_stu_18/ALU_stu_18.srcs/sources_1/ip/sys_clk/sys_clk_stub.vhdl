-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Mon Jul  7 21:58:40 2025
-- Host        : FB47 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               Y:/Code/Digital_Design_MCU/ALU_stu_18/ALU_stu_18.srcs/sources_1/ip/sys_clk/sys_clk_stub.vhdl
-- Design      : sys_clk
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sys_clk is
  Port ( 
    clk_out1 : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end sys_clk;

architecture stub of sys_clk is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,clk_in1";
begin
end;
