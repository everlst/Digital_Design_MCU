// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Jul  4 12:05:13 2025
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
  input [4:0]a;
  output [31:0]spo;

  wire \<const0> ;
  wire [4:0]a;
  wire [31:0]\^spo ;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;
  wire [28:10]NLW_U0_spo_UNCONNECTED;

  assign spo[31:29] = \^spo [31:29];
  assign spo[28] = \<const0> ;
  assign spo[27] = \<const0> ;
  assign spo[26:19] = \^spo [26:19];
  assign spo[18] = \<const0> ;
  assign spo[17:12] = \^spo [17:12];
  assign spo[11] = \<const0> ;
  assign spo[10] = \<const0> ;
  assign spo[9:0] = \^spo [9:0];
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
  (* c_addr_width = "5" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "32" *) 
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
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .spo(\^spo ),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10336)
`pragma protect data_block
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
oN4Bcsx34Tlf8TJK+W06JC2hEQ==
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
