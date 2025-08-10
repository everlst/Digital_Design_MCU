vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr \
"../../../../v200_MCU_multi.gen/sources_1/ip/imem_6/sim/imem_6.v" \


vlog -work xil_defaultlib \
"glbl.v"

