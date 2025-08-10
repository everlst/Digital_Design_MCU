// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Jul  5 00:43:43 2025
// Host        : everlasting running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ imem_7_sim_netlist.v
// Design      : imem_7
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "imem_7,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
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
  (* c_addr_width = "6" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "48" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "imem_7.mif" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10832)
`pragma protect data_block
+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
d8k=
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
