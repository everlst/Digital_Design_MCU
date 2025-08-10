// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Jul  5 00:43:21 2025
// Host        : everlasting running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/GitHub/Digital_Design_MCU-main/v210_MCU_multi_32/prj/v200_MCU_multi.gen/sources_1/ip/imem_6/imem_6_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10480)
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
