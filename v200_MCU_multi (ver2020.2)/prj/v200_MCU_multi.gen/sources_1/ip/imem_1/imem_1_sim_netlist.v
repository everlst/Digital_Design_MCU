// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Jul  4 12:03:48 2025
// Host        : everlasting running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/GitHub/Digital_Design_MCU-main/v200_MCU_multi/prj/v200_MCU_multi.gen/sources_1/ip/imem_1/imem_1_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10736)
`pragma protect data_block
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
wu3kHw8K04ZSOPXLYmlHBY5jnDc=
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
