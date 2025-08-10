vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../v200_MCU_multi.srcs/sources_1/ip/imem_1/sim/imem_1.v" \


vlog -work xil_defaultlib \
"glbl.v"

