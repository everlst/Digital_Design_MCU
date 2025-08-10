// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Jul  4 00:53:15 2025
// Host        : everlasting running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/GitHub/Digital_Design_MCU-main/v200_MCU_multi/prj/v200_MCU_multi.gen/sources_1/ip/imem_1/imem_1_sim_netlist.v
// Design      : imem_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "imem_1,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module imem_1
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
  assign spo[18] = \^spo [18];
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
  (* c_mem_init_file = "imem_1.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  (* is_du_within_envelope = "true" *) 
  imem_1_dist_mem_gen_v8_0_13 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9600)
`pragma protect data_block
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
rfLGZ3h3L3AdwfRWLWBxVAUCcRokqHpa
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
