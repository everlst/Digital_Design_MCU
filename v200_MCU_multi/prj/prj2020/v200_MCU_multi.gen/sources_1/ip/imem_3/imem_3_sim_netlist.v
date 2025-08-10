// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Jul  4 00:53:53 2025
// Host        : everlasting running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/GitHub/Digital_Design_MCU-main/v200_MCU_multi/prj/v200_MCU_multi.gen/sources_1/ip/imem_3/imem_3_sim_netlist.v
// Design      : imem_3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "imem_3,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module imem_3
   (a,
    spo);
  input [5:0]a;
  output [31:0]spo;

  wire \<const0> ;
  wire [5:0]a;
  wire [31:1]\^spo ;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;
  wire [28:0]NLW_U0_spo_UNCONNECTED;

  assign spo[31:29] = \^spo [31:29];
  assign spo[28] = \<const0> ;
  assign spo[27] = \<const0> ;
  assign spo[26:20] = \^spo [26:20];
  assign spo[19] = \<const0> ;
  assign spo[18] = \<const0> ;
  assign spo[17:12] = \^spo [17:12];
  assign spo[11] = \<const0> ;
  assign spo[10] = \<const0> ;
  assign spo[9] = \<const0> ;
  assign spo[8] = \<const0> ;
  assign spo[7] = \<const0> ;
  assign spo[6:1] = \^spo [6:1];
  assign spo[0] = \<const0> ;
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
  (* c_mem_init_file = "imem_3.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  (* is_du_within_envelope = "true" *) 
  imem_3_dist_mem_gen_v8_0_13 U0
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
        .spo({\^spo ,NLW_U0_spo_UNCONNECTED[0]}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9360)
`pragma protect data_block
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
rVphVRDFzRT7kv1M
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
