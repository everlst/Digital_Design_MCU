// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Jul  5 00:42:37 2025
// Host        : everlasting running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ imem_3_sim_netlist.v
// Design      : imem_3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "imem_3,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
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
  (* c_mem_init_file = "imem_3.mif" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10768)
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
