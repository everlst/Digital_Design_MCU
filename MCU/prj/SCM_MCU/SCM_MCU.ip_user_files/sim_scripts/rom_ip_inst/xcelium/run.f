-makelib xcelium_lib/xpm -sv \
  "F:/Vivado/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "F:/Vivado/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_4 \
  "../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../SCM_MCU.srcs/sources_1/ip/rom_ip_inst/sim/rom_ip_inst.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

