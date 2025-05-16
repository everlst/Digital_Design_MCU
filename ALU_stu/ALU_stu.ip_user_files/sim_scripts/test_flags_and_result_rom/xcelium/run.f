-makelib xcelium_lib/xpm -sv \
  "D:/CustomSoftware/Xilinx2020.2/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/CustomSoftware/Xilinx2020.2/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "D:/CustomSoftware/Xilinx2020.2/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_4 \
  "../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../ALU_arm_test_platfrom.gen/sources_1/ip/test_flags_and_result_rom/sim/test_flags_and_result_rom.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

