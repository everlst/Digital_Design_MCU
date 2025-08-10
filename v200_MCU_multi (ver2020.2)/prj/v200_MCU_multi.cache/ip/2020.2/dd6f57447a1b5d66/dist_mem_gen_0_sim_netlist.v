// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Jul  2 01:52:09 2025
// Host        : everlasting running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dist_mem_gen_0_sim_netlist.v
// Design      : dist_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_0,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (a,
    d,
    clk,
    we,
    spo);
  input [5:0]a;
  input [15:0]d;
  input clk;
  input we;
  output [15:0]spo;

  wire [5:0]a;
  wire clk;
  wire [15:0]d;
  wire [15:0]spo;
  wire we;
  wire [15:0]NLW_U0_dpo_UNCONNECTED;
  wire [15:0]NLW_U0_qdpo_UNCONNECTED;
  wire [15:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_CLK = "1" *) 
  (* C_HAS_D = "1" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "1" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "6" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "64" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_i_ce = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_parser_type = "1" *) 
  (* c_pipeline_stages = "0" *) 
  (* c_qualify_we = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "16" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(clk),
        .d(d),
        .dpo(NLW_U0_dpo_UNCONNECTED[15:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .we(we));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 16320)
`pragma protect data_block
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
ZCrxU4e8uvv5xUlGihHPpDCv
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
