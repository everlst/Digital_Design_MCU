// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Jul  4 12:04:07 2025
// Host        : everlasting running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/GitHub/Digital_Design_MCU-main/v200_MCU_multi/prj/v200_MCU_multi.gen/sources_1/ip/imem_2/imem_2_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10336)
`pragma protect data_block
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
PlzNBds4Jg0YHACds0zfYbAjxg==
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
