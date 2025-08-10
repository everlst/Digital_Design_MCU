// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Jul  4 13:19:17 2025
// Host        : everlasting running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/GitHub/Digital_Design_MCU-main/v200_MCU_multi/prj/v200_MCU_multi.gen/sources_1/ip/imem_7/imem_7_sim_netlist.v
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
  (* KEEP_HIERARCHY = "soft" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10640)
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
