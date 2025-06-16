vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vcom -work xil_defaultlib -64 -93 \
"../../../../MCU_FULL_RW.srcs/sources_1/ip/mult_gen_0/sim/mult_gen_0.vhd" \


