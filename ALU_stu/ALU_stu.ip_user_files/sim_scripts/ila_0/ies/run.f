-makelib ies_lib/xpm -sv \
  "D:/CustomSoftware/Xilinx2020.2/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/CustomSoftware/Xilinx2020.2/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "D:/CustomSoftware/Xilinx2020.2/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../ALU_arm_test_platfrom2.gen/sources_1/ip/ila_0/sim/ila_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

