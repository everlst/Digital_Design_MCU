// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Jul  5 14:42:26 2025
// Host        : everlasting running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dist_mem_gen_1_sim_netlist.v
// Design      : dist_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_1,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4608)
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
