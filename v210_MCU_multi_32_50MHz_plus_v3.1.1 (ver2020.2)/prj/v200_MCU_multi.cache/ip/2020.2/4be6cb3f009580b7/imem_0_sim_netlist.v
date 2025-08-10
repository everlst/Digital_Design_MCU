// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Jul  5 00:41:50 2025
// Host        : everlasting running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ imem_0_sim_netlist.v
// Design      : imem_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "imem_0,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9968)
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
