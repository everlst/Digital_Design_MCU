// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Jul  5 00:43:08 2025
// Host        : everlasting running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/GitHub/Digital_Design_MCU-main/v210_MCU_multi_32/prj/v200_MCU_multi.gen/sources_1/ip/imem_5/imem_5_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10992)
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
