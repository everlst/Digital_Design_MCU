// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Jul  5 00:43:21 2025
// Host        : everlasting running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ imem_6_sim_netlist.v
// Design      : imem_6
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "imem_6,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
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
  (* c_mem_init_file = "imem_6.mif" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10528)
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
