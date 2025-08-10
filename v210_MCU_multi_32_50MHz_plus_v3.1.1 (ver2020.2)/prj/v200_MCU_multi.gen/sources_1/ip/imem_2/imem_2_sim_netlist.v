// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Jul  5 00:42:23 2025
// Host        : everlasting running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/GitHub/Digital_Design_MCU-main/v210_MCU_multi_32/prj/v200_MCU_multi.gen/sources_1/ip/imem_2/imem_2_sim_netlist.v
// Design      : imem_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "imem_2,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module imem_2
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
  (* c_mem_init_file = "imem_2.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  (* is_du_within_envelope = "true" *) 
  imem_2_dist_mem_gen_v8_0_13 U0
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
