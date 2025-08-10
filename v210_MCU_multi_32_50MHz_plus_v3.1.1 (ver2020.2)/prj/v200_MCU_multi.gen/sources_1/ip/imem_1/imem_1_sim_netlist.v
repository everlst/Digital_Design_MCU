// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Jul  5 00:42:07 2025
// Host        : everlasting running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/GitHub/Digital_Design_MCU-main/v210_MCU_multi_32/prj/v200_MCU_multi.gen/sources_1/ip/imem_1/imem_1_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10832)
`pragma protect data_block
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
5pk=
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
