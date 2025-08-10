// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Jul  5 00:42:50 2025
// Host        : everlasting running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/GitHub/Digital_Design_MCU-main/v210_MCU_multi_32/prj/v200_MCU_multi.gen/sources_1/ip/imem_4/imem_4_sim_netlist.v
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
  assign spo[26:20] = \^spo [26:20];
  assign spo[19] = \<const0> ;
  assign spo[18] = \<const0> ;
  assign spo[17:16] = \^spo [17:16];
  assign spo[15] = \<const0> ;
  assign spo[14:12] = \^spo [14:12];
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9808)
`pragma protect data_block
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
RUSYNQ==
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
