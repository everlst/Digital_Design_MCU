// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Jul  2 00:59:14 2025
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
    spo);
  input [7:0]a;
  output [31:0]spo;

  wire \<const0> ;
  wire [7:0]a;
  wire [15:0]\^spo ;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;
  wire [31:16]NLW_U0_spo_UNCONNECTED;

  assign spo[31] = \<const0> ;
  assign spo[30] = \<const0> ;
  assign spo[29] = \<const0> ;
  assign spo[28] = \<const0> ;
  assign spo[27] = \<const0> ;
  assign spo[26] = \<const0> ;
  assign spo[25] = \<const0> ;
  assign spo[24] = \<const0> ;
  assign spo[23] = \<const0> ;
  assign spo[22] = \<const0> ;
  assign spo[21] = \<const0> ;
  assign spo[20] = \<const0> ;
  assign spo[19] = \<const0> ;
  assign spo[18] = \<const0> ;
  assign spo[17] = \<const0> ;
  assign spo[16] = \<const0> ;
  assign spo[15:0] = \^spo [15:0];
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
  (* c_addr_width = "8" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "192" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "dist_mem_gen_0.mif" *) 
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
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .spo({NLW_U0_spo_UNCONNECTED[31:16],\^spo }),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7568)
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
