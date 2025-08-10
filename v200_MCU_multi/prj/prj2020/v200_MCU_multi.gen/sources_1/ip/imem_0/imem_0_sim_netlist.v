// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Jul  4 00:52:57 2025
// Host        : everlasting running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/GitHub/Digital_Design_MCU-main/v200_MCU_multi/prj/v200_MCU_multi.gen/sources_1/ip/imem_0/imem_0_sim_netlist.v
// Design      : imem_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "imem_0,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module imem_0
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
  assign spo[18] = \<const0> ;
  assign spo[17] = \<const0> ;
  assign spo[16] = \^spo [16];
  assign spo[15] = \<const0> ;
  assign spo[14:12] = \^spo [14:12];
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
  (* c_mem_init_file = "imem_0.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  (* is_du_within_envelope = "true" *) 
  imem_0_dist_mem_gen_v8_0_13 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9040)
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
