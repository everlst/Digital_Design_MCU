// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Jul  5 00:42:23 2025
// Host        : everlasting running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ imem_2_sim_netlist.v
// Design      : imem_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "imem_2,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
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
  (* c_mem_init_file = "imem_2.mif" *) 
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
