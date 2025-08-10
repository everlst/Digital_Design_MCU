// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Jul  4 00:54:29 2025
// Host        : everlasting running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/GitHub/Digital_Design_MCU-main/v200_MCU_multi/prj/v200_MCU_multi.gen/sources_1/ip/imem_5/imem_5_sim_netlist.v
// Design      : imem_5
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "imem_5,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module imem_5
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
  assign spo[26:20] = \^spo [26:20];
  assign spo[19] = \<const0> ;
  assign spo[18:12] = \^spo [18:12];
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
  (* c_mem_init_file = "imem_5.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  (* is_du_within_envelope = "true" *) 
  imem_5_dist_mem_gen_v8_0_13 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9728)
`pragma protect data_block
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
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
