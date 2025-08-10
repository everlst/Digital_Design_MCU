// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Jul  5 14:42:26 2025
// Host        : everlasting running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/GitHub/Digital_Design_MCU-main/v210_MCU_multi_32_50MHz_plus_v3.1/prj/v200_MCU_multi.gen/sources_1/ip/dist_mem_gen_1/dist_mem_gen_1_sim_netlist.v
// Design      : dist_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_1,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module dist_mem_gen_1
   (a,
    spo);
  input [3:0]a;
  output [15:0]spo;

  wire [3:0]a;
  wire [15:0]spo;
  wire [15:0]NLW_U0_dpo_UNCONNECTED;
  wire [15:0]NLW_U0_qdpo_UNCONNECTED;
  wire [15:0]NLW_U0_qspo_UNCONNECTED;

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
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "16" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "dist_mem_gen_1.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "16" *) 
  (* is_du_within_envelope = "true" *) 
  dist_mem_gen_1_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[15:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[15:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[15:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4624)
`pragma protect data_block
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
wOo0+8QN/Q==
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
