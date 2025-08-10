// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Jul  4 00:54:45 2025
// Host        : everlasting running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/GitHub/Digital_Design_MCU-main/v200_MCU_multi/prj/v200_MCU_multi.gen/sources_1/ip/imem_6/imem_6_sim_netlist.v
// Design      : imem_6
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "imem_6,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module imem_6
   (a,
    spo);
  input [5:0]a;
  output [31:0]spo;

  wire \<const0> ;
  wire [5:0]a;
  wire [31:1]\^spo ;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;
  wire [28:0]NLW_U0_spo_UNCONNECTED;

  assign spo[31:29] = \^spo [31:29];
  assign spo[28] = \<const0> ;
  assign spo[27] = \<const0> ;
  assign spo[26:19] = \^spo [26:19];
  assign spo[18] = \<const0> ;
  assign spo[17] = \<const0> ;
  assign spo[16:12] = \^spo [16:12];
  assign spo[11] = \<const0> ;
  assign spo[10] = \<const0> ;
  assign spo[9] = \<const0> ;
  assign spo[8] = \<const0> ;
  assign spo[7] = \<const0> ;
  assign spo[6:1] = \^spo [6:1];
  assign spo[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* c_addr_width = "6" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "64" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "imem_6.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  (* is_du_within_envelope = "true" *) 
  imem_6_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[31:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[31:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[31:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo({\^spo ,NLW_U0_spo_UNCONNECTED[0]}),
        .we(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
AWk2+F/LLIwJ/3H70MT+p73z+MaZAUnylB9xu/zfH66xX8dAaOizqpslZkE4MXrWhxdHpghP7sIj
kwvWqhJ3gA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
f3tnX2YCmmij/BT714m5fPTuG3pr/Sp1bWD1FpCFiwTkcUFmqMNcr7abCn+qa2HUp1VAs9a1kY1i
yU68W3C4ARAx1rnlow3CtMBZ+4vG1QDA+Ciu5T+MSJsiWTAoMU3jJunULwD6zEC9h/Y3bBf+ZNGj
RvbKgHQFYSq+EYUzleQ=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
C6xRmzJVnvguMc3Lt5tkoyg5+/u1VuxRooNBOmgUvD6c148xX9CV/zz4fw53vbCzqUg3WYMPAs5M
/tMrhPMrX5cqjMMHbC20NaFxsFGCfdbN+1Jiu6Ffu0obXLvBu7UGBCEaDTCY0wST3S+7NZ+HnAat
RIt5cVRmnWtLEj9MP8SxAk019LKc3+2AUY0eWFhWbTGvNoTLcRFak8vqIx8KBuqhc16O50jjNmM3
PJltfibMKzAmWpsf6xiOkaD+BvARuccAoYGgANLBAEQdJUza98//SuTN0KLZKbFSmy2WI5iAzkxJ
bhH9hPn6Ks1JkH9+j61hMSpdxSh8rM8X8Dppxw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pefxdCU7VwYHa7diZaenheQOVCFpIvDlVp0qUtYsCnfw3IK+d5+k4O7xc5MWvQPeJpwUWNg+c9U8
PcbHo1enWoVg9o1V4U5fg7wxYqKmubBjgGF3yJ5FYGt6FeiD7zcnIJcaP2puAYDdVnxtiJnNmFz2
OQ7UQsleDpBQo3E4NEsbtqgSaopjHREMjI4yjJ9l5XZYNPCWUzUV/mSGX/kF+vuSOZclwPm6w72e
TE0MyJZA2HPDY3HIy260pYSHuDTUpe8gTxi0s8JmpFjaMaibBcPzq2gqPSQe1d6pDE8cv0OxNYKL
gFy+uh/H5gpNjfWVBhRmUo/kFf8fs680z0B0IQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
q8meW/DFYsK3R2jTQ13P/a1BVQyF0Eb3aLhqxNSrqINAq7gQ0DvJ6JFuxd6Ce7TIpxqKUYX9026h
UujOPWt7f1brVrSWmt8cW5Um2Yy8tv+YSNv9Ig592u4GssTU6dF978RK/7L4ZuQObLOKvWLJqo3F
6gzw0VbqYS3g5aaGu+Y=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GVM7UoBz9uTOdnKd0CVM0lBuJK2N20FwcoiRGregMBQMsQuevbc7y03ZehM7mfGvEdERp1TciWoI
1b6cDAZYb0YBfSuch0bItCwhdftV3A4/R0nUF0HROsZ/rm/HV7DKDXxItqK0qcdOwqf7ju85NMa4
FJRP/Nuq/ya9IvX9BCpmUlT7tLkICG8cEL8/iJrJY3jRIBtKw85mL5OM+r22LQeYg1/3rb9Rk9BT
RZCTbDcVSUq2Awr+6f0L2NXlRwhFraBy+h9iSZKZ/U7uolyF0nB1+/BSgOl+rttZ2KxfLXe6g81N
FbxtrlpK7FNc9fx2jrKWh5bczyW6p0ATPX0ZbA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rYkJ9a3QzTBGC5CITub5Su2Qs6nnM1m+OFLf4ykZkZGIsp11NQi6h5t8dsi/rX/MeEof1XLVJGEU
N+qLOHuLrttRAipPNBsj7yqH3Amnleqy/rjy8UcckD0gxIYzuIlc+2VKoAoyrEFgofTH5bKzBaaQ
q0JSt8PES8xuld4SvsKwr+0Q23qJIUpeNL3HvzxZDmYf5OhTkwlZPi/aLwSMoPZHKwetLUg5SdBm
7K4UmxvUPD3GNxo6GW6dkG2tFW/N9+ju7i//O1A74VUrDPo1OwQfEJazwHFFpHGjCJkv2CiPU3+I
TIVvzssQcs8IphMJulwZguc7fFiYv6aZyj/GrA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PqIVM68d++A6qxRgSePlX8JOoCfHcFLdhzsYr1BDYvLE5JJ5WKFO0Bie6pyEiAbsH8z6oUFGm/Qy
BLXAyWfv1fmbVAwztezaMaxBF0Lw4epvQlAFVdMGJVKgvxfU7ssvLc1KfpF6R/c1o5+4Vf7zn3X+
R8k67LVYgJoxhrPoY3XYr88CjSITfNW0jLDjh0jtDWf7H7nM6QYSXVbRYczQPcepXW2MOFcCZsbi
tdla+UNJ4NeKTUK5bdE9tNZx/8BYKrJtLhyvNdwHi7EdonKLjQu63ExIHoriUmiZScMNbtr2LUBc
YYGUTIENquQ/OhU+DAVXmKbIZcQhwGaqjYeaag==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YMvD1GHkklhDlN9yur11SqhNZTItCRHxHobZtty993SsbvXTWJBbLeIJ+nQ/sv57gpjV5RswiJYh
Vu7QPlLUy2DbVjjcqxaxXlPvYaWV1eKD7BVBOV6HDzPAaAIaFvNjeRurYX0a9Dz1qkgkmttneZxB
s04mTyRdVOc7jIs5wjgXiF+iA0W50/g9JmIYyP6mMLkgEy0MbGyVfpbRfDMcrB3ACnucHTo8A0nT
V/rBUOGbTCYPmQ01tbuE2nqoEfTlmqHVKO6BZ93tQUEjrYoJdteva6yHUfH3dbV1vwwBtsdolICY
7x8cMlorxb6y2ZD7vQEYz6Q6iVnG/PmdaCkLSg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9344)
`pragma protect data_block
+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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
