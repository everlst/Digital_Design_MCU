// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Jul  5 00:43:43 2025
// Host        : everlasting running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/GitHub/Digital_Design_MCU-main/v210_MCU_multi_32/prj/v200_MCU_multi.gen/sources_1/ip/imem_7/imem_7_sim_netlist.v
// Design      : imem_7
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "imem_7,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module imem_7
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
  (* c_addr_width = "6" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "48" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "imem_7.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  (* is_du_within_envelope = "true" *) 
  imem_7_dist_mem_gen_v8_0_13 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10784)
`pragma protect data_block
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
PzhLyqHv7Rjo7sU=
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
