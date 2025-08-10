// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Jul  4 00:53:34 2025
// Host        : everlasting running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/GitHub/Digital_Design_MCU-main/v200_MCU_multi/prj/v200_MCU_multi.gen/sources_1/ip/imem_2/imem_2_sim_netlist.v
// Design      : imem_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "imem_2,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module imem_2
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
  assign spo[16:15] = \^spo [16:15];
  assign spo[14] = \<const0> ;
  assign spo[13:12] = \^spo [13:12];
  assign spo[11] = \<const0> ;
  assign spo[10] = \<const0> ;
  assign spo[9] = \<const0> ;
  assign spo[8] = \<const0> ;
  assign spo[7] = \<const0> ;
  assign spo[6:5] = \^spo [6:5];
  assign spo[4] = \<const0> ;
  assign spo[3:1] = \^spo [3:1];
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
  (* c_mem_init_file = "imem_2.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  (* is_du_within_envelope = "true" *) 
  imem_2_dist_mem_gen_v8_0_13 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9280)
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
