// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Jul  5 00:42:37 2025
// Host        : everlasting running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/GitHub/Digital_Design_MCU-main/v210_MCU_multi_32/prj/v200_MCU_multi.gen/sources_1/ip/imem_3/imem_3_sim_netlist.v
// Design      : imem_3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "imem_3,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module imem_3
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
  assign spo[26:11] = \^spo [26:11];
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
  (* c_mem_init_file = "imem_3.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  (* is_du_within_envelope = "true" *) 
  imem_3_dist_mem_gen_v8_0_13 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10720)
`pragma protect data_block
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
lePI1g==
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
