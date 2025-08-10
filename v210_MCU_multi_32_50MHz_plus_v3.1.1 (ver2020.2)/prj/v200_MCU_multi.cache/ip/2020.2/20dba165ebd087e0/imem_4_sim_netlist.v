// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Jul  5 00:42:50 2025
// Host        : everlasting running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ imem_4_sim_netlist.v
// Design      : imem_4
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "imem_4,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
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
  (* c_mem_init_file = "imem_4.mif" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9856)
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
