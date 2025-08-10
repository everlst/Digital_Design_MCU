// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Jul  4 00:54:10 2025
// Host        : everlasting running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/GitHub/Digital_Design_MCU-main/v200_MCU_multi/prj/v200_MCU_multi.gen/sources_1/ip/imem_4/imem_4_sim_netlist.v
// Design      : imem_4
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "imem_4,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module imem_4
   (a,
    spo);
  input [5:0]a;
  output [31:0]spo;

  wire \<const0> ;
  wire [5:0]a;
  wire [31:0]\^spo ;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;
  wire [28:7]NLW_U0_spo_UNCONNECTED;

  assign spo[31:29] = \^spo [31:29];
  assign spo[28] = \<const0> ;
  assign spo[27] = \<const0> ;
  assign spo[26:20] = \^spo [26:20];
  assign spo[19] = \<const0> ;
  assign spo[18] = \<const0> ;
  assign spo[17:16] = \^spo [17:16];
  assign spo[15] = \<const0> ;
  assign spo[14:12] = \^spo [14:12];
  assign spo[11] = \<const0> ;
  assign spo[10] = \<const0> ;
  assign spo[9] = \<const0> ;
  assign spo[8] = \<const0> ;
  assign spo[7] = \<const0> ;
  assign spo[6:0] = \^spo [6:0];
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
  (* c_mem_init_file = "imem_4.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  (* is_du_within_envelope = "true" *) 
  imem_4_dist_mem_gen_v8_0_13 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9008)
`pragma protect data_block
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
HMk=
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
