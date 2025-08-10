// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Jul  5 00:42:07 2025
// Host        : everlasting running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ imem_1_sim_netlist.v
// Design      : imem_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "imem_1,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
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
  (* c_mem_init_file = "imem_1.mif" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10880)
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
