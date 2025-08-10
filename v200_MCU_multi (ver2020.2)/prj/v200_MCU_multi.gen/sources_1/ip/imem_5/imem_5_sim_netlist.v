// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Jul  4 12:05:00 2025
// Host        : everlasting running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/GitHub/Digital_Design_MCU-main/v200_MCU_multi/prj/v200_MCU_multi.gen/sources_1/ip/imem_5/imem_5_sim_netlist.v
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
  (* KEEP_HIERARCHY = "soft" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10816)
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
