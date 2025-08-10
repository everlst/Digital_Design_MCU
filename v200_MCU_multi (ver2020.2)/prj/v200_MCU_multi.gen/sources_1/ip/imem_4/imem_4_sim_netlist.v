// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Jul  4 12:04:43 2025
// Host        : everlasting running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/GitHub/Digital_Design_MCU-main/v200_MCU_multi/prj/v200_MCU_multi.gen/sources_1/ip/imem_4/imem_4_sim_netlist.v
// Design      : imem_4
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "imem_4,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module imem_4
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
  (* KEEP_HIERARCHY = "soft" *) 
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
  imem_4_dist_mem_gen_v8_0_13 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9808)
`pragma protect data_block
0g4R+SrXlNyPH0jW52ra6oW87N6MxRCWJDBzX6luq7jGsozFSOGsENttOgHZMT2apRo7j9F3FT2p
/X/0iA2l27EHLgGGBEzftw9shsDCDshz1rxMpEuQSgy7Qw/JEoj5ABO0lROEvK9zqFqiffNqxHnd
Th52MIMSTsS98XvjmCElKscDJH/Nv6RUR7GasMm+Oa3th23b9g8kNVTGYwe/TfhjBQj/HnfQHqCR
4diqGHu543ymmLKhjniLr3Fw6Bw1Npqv3vAFGkJsnauPoGKMCl2p3S2ty8TX3PCznZi1C6C6YBcC
uHJIKUyMMm1+0/T0+ooy5qMXjEVjcNsW99Ui0kwVgCHDj+hpiJ/Poc1kEhU+s3N2oYpSyS/F3zkK
HSw7R2pPMrcWrP177DwKZDEH1cTu8S4TyRa3ovFWM0jFh8lDnDj1XWA+JiUW2CDVXhZtj2cq8uaP
m/euoChUduCdt4qsNl12xzjTwoRrR+8Nv57wM8X64g+FF5/iJ6CRE5s33r5a/ApDowuiARwrSb3k
KTt50KINs0ItTMmRBT4NdSodwcJqh+2RjL+I9qWrTTYi3qqr4bGKJowmb6K/AWW5I8FXsA7oFg8q
8njRR+f6rtVtIvna8Dx/ArT71l5i/0AD4gbkpAAbFaYsHAuqpUFxBb2PjjZNBLjAiuhkCWidAJS4
SbUrvNSwne0auuQJzCa2m9IGmDnv7BRqv802VRV4t6akTXzcGOu8f9y/aN2HPgb3ql8vUkTUJKXL
Ihgb49MVRnN623u1vITwOyRmB6masFIA9QFfeZBm3S4YcoBNUDXTyzzgwFyPMCHPeSG1id3zHvXX
TY2SmlGTyT0cwFMN+BBXtZZBx3uuYmt9mKE6wmbHvnGUE9skeE2CXiN27QL7B47OCa/pl2HsiZfO
/+6STzqFhlYjqoZMgIykRom3i19BHWYP/vSANGy8ABKuXpkjRi4LP2hufKNxZZSptzTy6oj6Q4Kk
7SOsPh3AYcY5ww85AMHfXuBkhA5LRVRJWPAdn22CnGJmbWsOZjOMKogzr496gHX7Rhnwlv4Mikgo
w1dnXV8VHJZTvxQgGZ67/WxSF1b+mYqj2L5IDKRIg4RXKmS2ovPZUDJFNoHz85Zb1xmEGY38pmOM
ncKjeWt8ugRTgvi2uuieN/d/4nwj3DIAR1jqCS+O05l8aQoYFGD4tTcAJd//Z8MvCRsp10gSRhQA
FzmpfAvEXDDxCWEJzhrcVaz6tfxBp3LLZRaFteI3nubxLnZBiD4ZZBkrqStBprnap4+1N3DvbeDJ
0UdyXdMk49KS9TB71LN9U8Xs4tuaaQf9txxabxLxIsJl+Xayfwl6vwRzfolrLtNHUrwYmSlMS3y0
p8AvveW/EmU4ZWKRQn1CBLJPBLiT13JoJMfmvjTr3ewcAk8rpV2+TRYnm+ms79pvaN3tbwPGG6+S
lBiduk5hOsxHUT640RBcWgU5IHqHTS8DISecB02D8dEcFRco/RDgPNNkukOuJVa1jlKO7C+hJyy5
b2MVaW0ARIBM1UH0qqx/R226GDoHjOrsB/NgwZCfRJw7YDjWCLzimSrTXq9cn2mnjLkJIF5ld9+a
Y5ZdN2QL/RnDjYr1Nj8oCsRFHDk3ADYQQG2IbNMo5flq9FSXL5PX9/TOpabFaE3mP9QKuQxpHBKk
+OLkFQcJUSBz4PfUKk/E83B17jEE68+GY9GmCRWQFyo58PU+oURL1uUevd7bmBgUS0mZi1DWBSAn
88MPlTDWzQoUX4/1AnkzqSoUNxuEJQf6fd638vziJ1MKVl29XJU458iUCWmxZDM+89a5qw6kFuiB
ie8tBhvPK633EKWbcEBzZm2N0VNo+sDYt2Mat5mvrpcoUnBwsnwM0Efl/nnIYSTdiO0rfx8/CQl+
lJGWIaY21CVhid62o08UBvFobpFHGbhvlAaKhyAcT3Kn3X5u3988o0Kv0WyvQqu3ut2H/d7Qro7O
IOgF6wuAfDtUEPDRq/JGhxrhAknqGPPKbJLJVynVfn2ib6Z0fBQ82+Iv/bYsmg5RHaLl9H2hBMKa
JW3M84KIcnDhjrxoLygPN8dl3cI2d1inChfN8QGVxVZn1qBYskoHHC17pKA8TWyV7Rh8hXBzj5dL
JKHFVMy32/4TmtLEtYwdG/HBp2lKvdgPisQ3DFlXPZXa9FmBw86M4S7R6cgDIpKZa+wVrm9VhbiB
00I0JMfxEY28vcytMOCrQ5TcZow9PbkXsItCNsEf1Ui2MapnDr19piMiTHIppLZgtc0xmeHvkTAP
odP81j4rUh1WiaRX3OhAoFOMWdhBIlmfW8uWBBuqZzF+bYgsb2Us3bZjW6nVPgAwfDomis0sHu3h
s/W/QIb9OMnYFQHUZbVAYWopqyDUOGeuduNpEEL9QG8QQwHLnrKeojStIN9azocmvDWRBK3rDkG0
/H858U2lFtPPuOjgxjiNd77sIuBvXnAReyEFB0Fljii8acZY4nxXw/N8P3+1+yYsn94UgS6jHTaX
sxnyIItNvqobO6rhtnMDOabzS8mtFh0iQWwoN6T9OXKA/yZ82GhAuGiJfIV9vMpWp2sKeJ3y72d8
0YIoFJmy8tK97lgp2InBKcvIg+97A6VmH8oN8W7LGiyYMDHfDRy5a/Hu/9UNBAlCZ0NwjsSAeJYu
9HSUke+QNsZB0w8t+V0EH+YH4fBZiwSkCpfv0QzBy548XkNG1NWMVrxAq4O/zEeKbYaJnCCmhiDw
a+/35bKHUiHQkEiFCLNjVOTciwna27fu5EA3flkhwEo3pBMV08PQTI9BEJchkKv5+emi9PiYEjuF
PM8HJzz1XDZWFId3O1eH6BRYhbjiPtOlGoARlDFupoI6mvx7mJdGgR1q4Y32qs5PHVHHlG5Curii
3J5xk+BRP0Dfg8wWNLLRke0/RvjjNZqhHeBWVQvGHXdrGhZm0lAaE3akTU9mV1LkqnReJav8yzml
WneZmPkv52Pi+leeqhhEoppJOaW6nR1Y//AgWwR18zvZqEQHhP9Ra57RkX4o0mrWab9dbYsljPv2
ZL4m2GZNnE60Ieg6lgBDbhbhta9UesIABXuvtwaaNz21fT8EGuyYgxGJPkriUcBBApDBskYxAbiK
HRUQ44MXPnoXmeoRIcpx58Op0vlhci0raHnUftQVmiuqiKoSejA3ZvXffXyim5DlQy+Xvvl0clBP
IcpcAJruBJXrmL1X+2xWrqA8hmeSdVE0f0EYtaRdNXVJHrbNOaCRW7Ijd8bD6/rT2hibSDSsqvmQ
Vyw5utMnMOVrHD/Mm7BTbGIkJeaHSxNNAMrDDLm6RqLG1M9SR8XPD7FGgv4SrURM2MgztknwAxRS
ugED4FGGgxGDo7NszmiVtWJm9r+M/0qirpI/KNhbjjGN+W5IqyN7kct8Jn7eOcl7avdb/1js/p9G
39JPhzP+x7O8HRJY9lG+wd8azsHMccjDrV24StuHrTxZc01MiB/1Pv06E3OhHKeVFuz501Tf0jKk
89zIJeG6cifKTysIixicrf457H34HXXtEPU37VBD2+CDsc+MK1bORXXnKGFNQ5zGpdKcfwKnL94D
FBfQlNg8fRfPMXfXmk/TGdwdy6MxNOeKy2qnTqhXxjYJfZGJJJF+rQbXTWjFvkODX0v11Jh/qism
MEagNijnQ0OWNjsVpaEhWg6Dc0Xb15mirO45MZy/FwC7+g3kYDh7V9pEc4snui5mLn2a454uAvqO
tokD3WNCw3QBQlSAgQuh86iOaTCUAjn+qONNqG3/DOu/Ov+XW7EcLtwGUSmPhF9hDfBjdI20aqAP
22WdKIVTbzYZesDe3BNcZzpI0sYD722liTncNV6FkRi601d05eecFIAcPHIx5WSdKHzWqMtRwTIY
RcOW/6iyL1Zsfbmz8s4J3JaFPY0YbQ8nJtcKuFBDg0hkUNCmvEgOAVS14XLYqz24ZfdFi5+s2UdO
WERiNikFFdaXKTQTlgnx9Bw+dqFLQuyLYE5sCEQW4GVE3CHBrOnTLplSGFLkhzMrul+N2v+c1HbL
ibS0gl0ocNr+eZZ+pQb0/zf/gcp5R6A6WQW+zeYX72P+1S1OXRvYCLHaWQoDZ7yhgIbgrrfBeU8h
FtOBAdb7c8vA/USm7UEXt4gXH8gPQbTyJfk72U2hrAFIBi531M00IrgmjrYsrXlA03PlRBoFmOSa
M7Uu8CDsVk9lWhw9NFywB0yAosrZ1F7OUz5CuE/7eUcTo1U7PdkXobOETdq4VpbGf+ZB1BlGVqsd
uICceccFvZBhjHu8GTiXds0vCMTpWy1pKIALjeumdSl91c+oDMD/BedfdI1P9/o2mNlQ8NNSTFj6
hFy0OEGErnoZTE9BEIVyyXxQHyfzUmPugFHaKaChzW+CqO1waK9Co9sE5hSZCiIn/9bgy2rIr8ZQ
1QjOsFZRxYYiFAaa6bZwwlkCnLu1s45emEiUsjAT8oF6w/5kPo881aPSTQXjqY+ak1CkhzwcdWkl
GbvAnpc6QQoB1lhM6XFYhIQgA/doViheY/o+kL4xvw9DR0G4HbVc6thBEmQQGfLLjP5TG10iT6ti
c5oZTGs7nNY4PC3QZ+b26yKGRRPN3udVkAkn5XhUNRdEgvfUODavJRIEYdlJnV02ljkx0RO3pnLy
/6EG2oBF3VLhq8UK9K5zy+osBQasJSduj7ULbkLoEsfWuh3qJC9n2LfEYj2IJ+C/b8Lut+pCWE4w
iGyJoKzjaUCBAMu0gB0GY/+KEqjYOeHqdTORQLnRbs6L0nvZoS3vW6JJ4hDIks+r+VbtKuTAlljg
710Rxpqu+QuLg/CWtgIYejaTMMY3yM8jWI3FS8ontD4SQdvdB21pLrmNs6khTr9qZYDPDrpmdR7n
Qccq+Q96Qf7KsrvBS/llsQP/Gg04IVcmFKr68nPQ40fwrNW7ct1TgZ7BGVo4PrAMpl2SkqhpnPkK
yQ0gyL0OT2WHbr41Um5yPFQQnSWLO5TpsfRRX9MyBqP/WsRp+w420ThN0HknmiX4Wkx7dmTBBNmD
wi0BBCev2n8OdLuUTrDIKdizfWALOiqpp+4JxQwpQ4OQWoarYiObWOAuN4NYuW9uFsgNxdfw3S9y
TtneoolZ2VSsCC7qv5serWAmJTiLgdOyTLO5HhwLg7SDHP4rGvDwSfyDzTCsKXPf8vIkLG1iILwO
Dgk1g56yCaXwgIlzlrxAg//kiMitpotf6xctlORgKgkIny/spyFmpXsa7/qLwEInXhovF0Ti3brh
J28fHDOFlrUI/1Z2yxuRqZrgCkLvq+d0lX6rcNEMVokhEhcqGkUl408On4wYauJFysjOl0yta1HG
MT+oICXCIib3NTimQFJOcuo6ybYzXbk2MG433BXH1bYi7XRuJEi+uTVx+ex6521EFHsjqCCAn7zq
i0cuVQUf1y4iAYrUjJVXkrVoJIjjUgaNWQyHk54qjegwr++AukWQ2Si4U5kaDv1iY+KtC2+U5A//
qvzGmsinlphAz/5N2MQfqOoGn1Jy+rXacHEwlzXv7hADCU43wYd69lEVYA5GIem9vmsaSWE4y6sP
7aFyU/ufk+gjBYU3Ow8HqJyfa8hfmU672buQ87jxxr5SMRhE6tndtJOgQLn4ncpdR2k77fckBZ8O
aty3d/liecNBYnrCbPK1HX50HCGvNjlEZ8foCiTynkhzuioSxK6NGK8YCW0r1046QFIr7+PnCKMC
D51LcoMjzEPmxbNfyDunGkACVGyFtS95lqEi7+/w8pN6FAcnebK0IeaghUm7jwHcirj1/R3eoZMo
lYowNX2wivEzyOLCLef8+WHvDk6qdHfYiZqRmG7NKqgaJUs50VtkRdN0uLL+aOw5Tgdff7l4hHpt
/OP0B9hOApJZ8qu0yoUFcdc5wQV/pOTTLANJn/GV3jBLkNPCZmVuBWt806nFSLJu0d4n4YEACJYV
iNAcH+F5NX056odq5E9SRmkDQUgX+SaTnfsyeHZjAsny1nzPHhKtdH5/0I+j3RHQpZJ1Ghm3gUY9
LIPkSmPLlT5o8e6zgszJnEtfcsuEHhd7LYcUXg7lqpFCnfrWbFfui2t8edjG+0lFFGxcACr+e3M3
yAh95zeXa7ZZZmtgtJdVBleVdHiMROIijIqEo+/dQm3q4BjJqY0BDRFSqqgFrJw9u78uaL3xn6fU
CQtm8O0AXvaoyB2kArfgnoQxltfRMABp1UNNCiXsa/HvJIvyj5mQ13K8qVuw3pDvsBua4wENNPu5
qylBc/R5JqIZ0MuUPh9MuN3cP/cfLK0u3JTSwKJ+SV8kcWhAlaO0/dyay5LPKUI2ge0ji2SqQiz1
hQetWC8UJjx6foFGJrlFIaVAhORC9IrUssR3sPZafnVdbsK4XBoJm//m9xqVTafR34YR0g0vgLSe
kWNxqOpVZzyC90zKAkDebGw4Gx1c9lud1y8qKOFCCBY1cUq5QtVvwYFkWqJNfqAmvm2ZaM7lEcPw
eBeV3lucXaAJgZhwd89ieXLSzSoWNTR/tsc2P8c7ueZlYwFMLoakaHsoA/RFPiHMGCVnGKrB+1VJ
KkcppMqh62oY3ARjzU8mjC6auH8XuQcrWRD/60Q06lSGIT77ENx2ee5E5wugdCJE4BHyyF0LviXW
xm5KI0RF1xxREzL9MWgiMYc0zqnId8RfLXOfAF+SgIcUPcrl8jp0mQV/vJjmT0BTPMfpJS0S4XGz
t6hKgvQ1XZNZhg6KN16WpqjE0HX9Oi47xG6AnncQ7eGlBkd2KacZykMMHam6j66CVms/WNh5ZCr5
GAkwY9Z43qsFWHorsgau9kO2dUNNpr81uF4FvHkH+NO2j5EIgNpVlEPxmLgPe6lyM2DtYTzhrjO6
74kQHX8oTDVn6ZPIz/3RhSB4fe6GqlJ7wX7tCmq1ZCYPKqgaKmm0sVXkrtw2HjGSWnLRNBBIA9cQ
WUedCse1TYxk0Q35/IUKBMCNRI9ygRPs3nyzhcOBFfxTLmwDK/ggifafmpUibcMF49Az2TdWQ9/5
rxVjh2r7FoBS+NxX0yZZjOQNbDiifvCAoc7OLrNvhwUA+P0g3+xAPBHAp09/Budj6hL68dRAUU0j
zKW1i6BK+jF4k44WDtY4//XnVdOI48AjC9QOMCykrCmfrsOXRaDavbHcYTDTlnFkGAyTpUkaq3s6
XtARIFugwpYlFMh2kd6dwDK8W/vAcrDxd/d+Hy0q5JSdFaHkAmKAqTCFBuhmi9OYqF352Z06oru8
DFBuctl/jKJ53Snio8qMXj3eQ5zMqBwk8iQpV08ikqWPt8jYm/KbGuRI0fd/4R3gcI4lOLg8RzTi
oae9szTO3E9BIRBzUToONwxXYmsYeA5y0Bv4mwITVsJShXp3tsuYz853MsZlvIXwYnz9PxJcS78e
9Uw1GrhuW3G1bJVoxZe+K/eCRY6UHxrJ76TOHDjITJfQiV7Et50hI6fh9XzCNQ0wo2xoDamGyhrP
xOCIj16XrTfqccTgfZntk06t85pjYBjsOlefRvs5afARAGT0K1GLPSQFzPt98KmrHuBYylzbBL6X
YpeR6VI/+4NnR/L7lTp8L1f565Oj+FV//gktKuhP/+LdegeDRMMz90/f+Fy1k6mVKd7Bo2+fWrz4
qEpFMo545rBMWJrr27tBPphM/dAeWUsbPXCQAIoL3EittRMgMqRVbKiUTDXu4tlyvwze3c9LnFSs
eO1Ic5PFPwEljs6I9j7kf1UxRkaS6fYlUSO9enez7QbqUVt9wLwqz1sPuep568RFPHcxFfAn5Yxu
IlRBRfMZdaaQjwhgO1GjaKEKAmozgBmputiymaFS4Gr2nol/O+u4ax6gnSEe5/6l+m7xuKd1Huqs
yxPqm3w3+lwL0JwLOtFvAuwzC7GX1UIfjl0z7AHn69SFhKlQtXWuuFi5JQem41ywgEEjHS5RgwhR
/uEd7TwdtG4bmy0qtSOfbFfN1xo8MK2rHXTszzw3yFmog0/JMCXpwWp4n2Hg5oFa2f9m2btYJQ/g
JVaARf+USokUGRJaISucwn5bTaXT/JJ6enKMzo8ROiK/7eLJjULgzpaRbsp6ojPm2bqBmvow25Pu
dhVWF+GU0i+XTt0ln6rUQc4LkD2qF/wOdGuI4UM1guVla5b4mNcFx2CuijvV1hZrpPMrLLGfXQv+
0WF8Af+ZFtDlEGNrmCxYg2iCyHwBsvGyUIExR49U1JHKPcL6Cu1YhE3QXxfMT980nxmZD8805uzG
5171ONdMNA8ldw6DmwZA12/+vjzgtEr5xPrh63GDzM7akCEMumFO0ZyF0bkJsbX/3ZOLmtVSujDc
Hcy19UlAmV6GPYOg1Oh1N5VjeSnoZ/kWbzbK5Ha64U0ZF/nP0eQG5zuRkGTatVCDn7ZPWFC6SHDa
Ke/x0g2KYquxnQ5mtU/kZTS1aOg7VsrzHR6EyS4z4CSjw01rFfcdhDkdCo5hzVReF36Yj2wRkerD
fQpX1+DxX8q1+SMaFyNQa+4vocR7cOUxjs/+yycM97MrTOO+FAE74ui+ZvzAlX5/eQ8a3xJg//gn
l+AIMNDGIpuU69Yks6eMoxvd/Y2TqVh/br49hgBtWXAD709UCtRxcs3YUod+o7OC2+7aX3K+OK6y
Jn3OQoeYN75m7rexWiqlCAX5DcrO40UKY77Am2zU9Me8+JW3reRePLrn2sOTSiEs/rtYH/OpoAUt
r4rRRPNF9EqPJuyB87FnRPrgg4INpjNgke5DaVL+DDD373Z/ihhLvtQ+yLn90JohAmYIKwQI8AjN
yZEBZzi6N9E6F540TMuoDDwgICLz5YCJPQ3+v4ugmbUjDNSyE45aY8d/NqBD7pCPxv8dUt+oi+I1
boMNpbWDVDaH3ide83LPxsdjNIvJ/Yoe4KvjV08yqF2G4Z5s0gjeOUy9LzpB+jGUF3dhYhd6KqZA
ZxDBjMQ1NN1Bn702dWhAkGDS1woiDZUNz77jY/BF/upRMddUdd9eWKlomJ6rOJrDvatkd4Ab00fD
l/1Z6FPnDYiA17UdKS6PWWaGnnVPahXNgaJ5L0Y74UEiYa0Iks/ceohqkZadFmRFuVa5TnQ1IxfH
kB0xf6ez6pEytc7ixtv0f3XXWqIwiAZmvNxPMPWhIpdoKXCqo/aJyFOy9x0erupWak4uA2p2OB23
zl7/xpS8dKUGrF7QORwie0Iu5VVoULrHnFkf2yhIph4byzmgQD2cQmUwRZYV+BaLpIZ5+rsk+yJM
qeGQXfmwD1enSdha2H1+bss6rMAq+seC4vDHR1HCCzkzE3ZJocCPdh3mP0rJ3YO5L3Yz168MqzY2
8ap7MA3IN//d2f9dJjoGf40JYNtVrdSlERZWcSPTkPpBpwRmaGIuCfLgVJLxalLeRnA605micRJv
aPWUcPXVLnkqEN0nXEHGAXkEYR0EjfRiWlcg2h6rFUcTNf95+kPtYTvb20OgZoDxBou9TrMcaKLU
d3KMgSbBPS2AU78IB5O6FiCljOxgMmDfmPpVaksjBR4qiJMOHKR/sNKglFWGkr41PCS1xZ6E1bn2
pjRTgCExCaJaOYDBSl7XYK90to6AoiXRpdtlyiFvWC+6uB2uewoqeSmUyNu1FkZxIuMEEgHnLBb7
EOIEpBQkg+emzoAkwlCE0TKJ2e9o3T9ICKTEX9h3vmRLEr70oOaHV45NgtutTHBubktjI3RFmQsW
qkF5XGF+Uxk7l3cegc9kXklg5BSIXIYRMRxA9dHmyvozOpbJ8pt3ppq2MedwDeFlSndpg8V3jEDy
Mp2kAYw9rv2WaxrPsasMVFdBt3r/Xqfikmk0GCOE2okbuTA0JcLUJRRWtAk2GHdr2egBdMb9ri2t
XnR4oBTen2zKs/bepxVWMHoG44GJ3eecFdXTznahzfnklTaQDB/7+DoRE0fyQJSvL6tU4ea9ZzjN
zbC/1YuEpPljYbDWArKzZVcr+CQYzJo5tk4IcHKtcmFz7QN6pvE3abp/uIlz4XO9G1x8hcTEZKpL
U/T3DtQfvzBhG/E0qXRs2tEvJrgSpsVEuUCGfXvxSjyuvN+YtnI0EVYY90l6WGl+ukLx/NGMYDKz
V9VD6pchGR1ekBmLri8ZE5x9xZWse1DK1ER9cnylI5lTSyMdl0U8gUB5wEgRh1JUWziaHTQVuBT7
n/OZ6ABajEe6ey6+TlZ6NJU34GTsU2dws7bbilbCMoFCtoaKifhRsfnWuzTdgQNoBDj+EByHHTGh
UNFJV7hCtOzK1eRF8ToWoT+voX6EBJb+lW5NW3o1EwQ23UZYxRswfevD1tBi8VTI4pH3JODbMWlP
tMOVhbyTf8Aux+Wowd/j1wIgXpkUU3OcQQKmFyZLCSInpk2jhQQGfo9zpGsRu9djkJ+WvWfqAcFA
VrfmGI8bYWj0hFtJvb64Mbluw886I7FlYXT16lphMLQISNwyhtAv7jhJRwl3SUGr2xGSCBu8I8eR
PcYqV+pBlA/gpxG6jQ3UnetaW3bXBb8amCWz62QqHGu8/sFDCA7wZaASK+5Obww0k+e4B9sCjtqa
XCzMySf5x1UT2pdx3c5P3RDkv9DFKIIJd1Lq8bDjzrhBno9Dn6kc/kIKlV1GkZhLKJTNGyZRyfz9
f7wx5CcDCRlBOF+PbfNzbAqz8y7cU8Bv8WuIGVG16rar4Lt8CETjpvi9qiUHrYEqnCWEGrAemHAJ
P6cQz1l8TDfJ9CJSleH3ZYGs0rGGzl5CnDnAHLRS5AUzn3mfov7MxeSxpOFlb9i0XGaevebSxz9Y
LCAgqWHapm9o55UQ4UiQEZQaA8FFLjusG0phwNexkEqM9pusQx6JMViaoDsoAauRNTCeWV49ppJh
nbzf1XDjunpmfe786QNA0PvPjElRDfWAqEzPZMti12XQuS9KYW15y+7ozJ7fCxjRE6JtKX9eHcEr
ORmNUZMKeR3vULo80mZMpLNcZRFVg2459ncZsF/Lgrtr1sjFReqr1wFHIFK8gdxSQzCcuv6oK+Gb
lMNqZlMO29f8FpDqfI+0H4TowLliUt6MdTesdSycmGK6u0A6ggQRuCdhLBlXpkAMJxvtpl2utPGo
iobStPqlmBT8C57At5g1DYLfZyj7TY/y2FBUlE64bVpe9TT0lI8wgouvYsfkHRacyRFcCNp3Fi4U
sCY+iWLcJkrIZpeR5icsyIT0hY6HgwHKLyjWdWW3Nlr45mrNPfoI7Vq1hIIrAlwJbAgao42N1T6A
TBUizSmJyyqx1cEApLh0cTWgrFCpfDnPjbjeXoUMQTDHqvjDwaI0PWSp1wYwFeS+zV3TbvRJKOHm
lNTQ8IqOcqpukf7UoVYg3ZNXpyTXLw+CGpPzgiKYhY4kdXD7mg82epNsD/EdIJsn3PC/OLbiVSCb
p1REXBjqYmwKrewePcd/N5tBfHLwP9bbj/aocWL3AnsKCGwiUbirMIndy3eQOUZZGrc7YRjHWywR
bUq7iIpvdyuLprG7sD4iYyPZ5wjWBkVlzMOhTChWzDJFjvHeau1teJ5vQV1L8yb7B1JVXgEt63dB
6P9jh0FaHrcHU9JeDmliOYYsgEUxa0AUKRTDeYkqZ0sshltTzG3GhNxCgMRfoLhVNOzddcHQWox6
m0SOxqlrrgplyrKcv/pfRxkaqzeyvuk3khzIZOD9fA0fUMTN5+4fdpp0Ht/PiICGL8/3VnbXrmlN
ig6af0ywXF4EOy2t7wJAcm0AGFMhGgvE/dy7Py743/+xDv1ioWCQ3oth74fLkHS3zSH6DgyK133E
dlxh4rDAIezrJW7ty/tjghLljknag73oAihV5jhLi6kgsNekXtl2mhzUVNBtPp4k8TJgPalnEdx/
xfgYkonrIljIkig/Ak75zcXh/lUJ1v59xG6gmZXQMElUcUwLwQbEV4fX5rvYuZv+JfHgz5yRrGAH
zd8nYKIBTINyUONJMP3hpjABHyUKmKnde33rbiU4RbYGkwOQW68khkJjj+Q+gdxx+ieuStVhblBw
EiR8/DNDeIlHzK90iSDXNEcO6xkZlaIOCwI4onoKlmnFb/+jaBQiF/Uo1YH4ANQmb7NRR0ogB4nf
6O9Qw4OQ2Ow48n0Ap8FZ9P0Ssr5ei3tnEXACNHjFxNV1URP9mpaTQHeOjz4kmiDbnWNnLmkiPRNq
eD9bpIBMTYwMgf2boIhGmZMkaIzG+nniTn5FO2EdF+2+ZfK+5csRmsEq7QxnDJjmV/08u17/h4T9
5SBesQ6suBDCZgLa7LRWVLIgZbBLUegQDjDXs3XysERa0Ee/GmuWJ6ZGwjDyj/j9JF0F6D011yFr
yX598cBjdGy3+IPDBpd096Tcx4KxcU2d94h1gleLPPAmmGB5WokH+POlic+zdGylXv1fZZIaI6+x
6KqFzKObr54P1KmFglkZS4HbJ4x7hDhX1sqSP5KuzG9N8ty0RI8ZRbDGibHHXckxLGP1GUDqqZVt
wtOw/pmKtaxZJyJiEK9SYMLp8GdYy1S+7g2JwrOwFIdUxzbm93a/RzGxSxpBnPHRdIjhO2NK/rD5
ijzVJvRDTkp04QJwwfrRhO/V2aET3WxzqCC+k/Puy1fkLmYlvtz5+ntuaFAbvuMVsNn7CdXQVIOW
mtFiHFQZPlGTH3hPZxnqRkJd5EMZ0FYx/oKxpeIKw8KiRR8UCLANC5s8FbqbnSUBBdXCHmDpBnod
JGZGwGVq0UpO7SH7Xn8zg+Je1h3zxYp9qhHjYGv2aEOh5y2Y/yAEmaxQmTVxZggz26RC4pWuRKH4
+xoWBQea665hppFBpabDgKT2BY2f2UKBckJg9vtT9pJvbpiLbK1FMC9xmfXGckfeqWsrcNbXeGPF
LZflGHzBenD+uWuUfnjJ2SKPA5NFAjmzpdPsc8qpwfMwPZ+ci4hO+xm7S87FTT09Rwtv++R2zOqd
qEWR/XNF3N/0xXAGWFkRyHDLOyKSkxSlCDw9Q07VRLDy2f7cbkDvus13or1Q5Yk9pGY+kPfPBGPV
9D41mI1OOUG1MFo/c2Lnm0HbxqSWV1K82GS1phPvqCwv0FbNKvctZxLToGX0VrLq7BEcSPp1Vrts
kFQfspWARPl11f/CxWqsUtV9KfOvMKz7JJGXKqv94bqqcbvUG/hoSX/aybZNFaRAQZES6ZciBs8m
+7xWRw==
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
