// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Jul  4 19:38:14 2025
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9744)
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
