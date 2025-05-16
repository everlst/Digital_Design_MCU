vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -sv2k12 "+incdir+../../../ipstatic" \
"D:/CustomSoftware/Xilinx2020.2/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/CustomSoftware/Xilinx2020.2/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/CustomSoftware/Xilinx2020.2/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic" \
"../../../../ALU_arm_test_platfrom2.gen/sources_1/ip/sys_clk/sys_clk_clk_wiz.v" \
"../../../../ALU_arm_test_platfrom2.gen/sources_1/ip/sys_clk/sys_clk.v" \

vlog -work xil_defaultlib \
"glbl.v"

