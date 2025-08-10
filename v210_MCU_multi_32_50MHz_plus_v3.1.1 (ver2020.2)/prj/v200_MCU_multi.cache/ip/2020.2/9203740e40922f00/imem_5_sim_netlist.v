// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Jul  5 00:43:07 2025
// Host        : everlasting running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ imem_5_sim_netlist.v
// Design      : imem_5
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "imem_5,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11040)
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
