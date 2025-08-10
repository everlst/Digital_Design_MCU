// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Jul  2 11:01:33 2025
// Host        : everlasting running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/GitHub/Digital_Design_MCU-main/v200_MCU_multi/prj/v200_MCU_multi.gen/sources_1/ip/dist_mem_gen_1/dist_mem_gen_1_sim_netlist.v
// Design      : dist_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_1,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module dist_mem_gen_1
   (a,
    spo);
  input [3:0]a;
  output [15:0]spo;

  wire [3:0]a;
  wire [15:0]spo;
  wire [15:0]NLW_U0_dpo_UNCONNECTED;
  wire [15:0]NLW_U0_qdpo_UNCONNECTED;
  wire [15:0]NLW_U0_qspo_UNCONNECTED;

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
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "16" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "dist_mem_gen_1.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "16" *) 
  (* is_du_within_envelope = "true" *) 
  dist_mem_gen_1_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[15:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[15:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[15:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4512)
`pragma protect data_block
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
xS/4EU8J9kGh
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
