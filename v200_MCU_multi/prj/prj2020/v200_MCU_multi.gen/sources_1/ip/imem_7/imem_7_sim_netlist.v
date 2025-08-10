// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Jul  4 00:55:03 2025
// Host        : everlasting running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/GitHub/Digital_Design_MCU-main/v200_MCU_multi/prj/v200_MCU_multi.gen/sources_1/ip/imem_7/imem_7_sim_netlist.v
// Design      : imem_7
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "imem_7,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module imem_7
   (a,
    spo);
  input [5:0]a;
  output [31:0]spo;

  wire \<const0> ;
  wire [5:0]a;
  wire [31:1]\^spo ;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;
  wire [28:0]NLW_U0_spo_UNCONNECTED;

  assign spo[31:29] = \^spo [31:29];
  assign spo[28] = \<const0> ;
  assign spo[27] = \<const0> ;
  assign spo[26:19] = \^spo [26:19];
  assign spo[18] = \<const0> ;
  assign spo[17:12] = \^spo [17:12];
  assign spo[11] = \<const0> ;
  assign spo[10] = \<const0> ;
  assign spo[9] = \<const0> ;
  assign spo[8] = \<const0> ;
  assign spo[7] = \<const0> ;
  assign spo[6:1] = \^spo [6:1];
  assign spo[0] = \<const0> ;
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
  (* c_mem_init_file = "imem_7.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  (* is_du_within_envelope = "true" *) 
  imem_7_dist_mem_gen_v8_0_13 U0
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
        .spo({\^spo ,NLW_U0_spo_UNCONNECTED[0]}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9728)
`pragma protect data_block
3wyITEDcLwGe+xOSaUUnwDn5wg1JxRnY6TSksdcT3T1Mdf22B8HTzeM7G3Fq2425DovlSA+lG3FL
EZ1xlujBeq0Wm5VZtkwzT47MJdlCcd9MrmcWdWoalfFuswsrNk237eeJQ/P4JvQmK3WiYcA5AJx4
Q9d2nB23RwBlF83bwkh87HBmhGucZzau6rMpvKs3X9emsmMwpuo7sicYtsKx7g8trfcI1RniwCGI
R3f0JwDOXJYLRB+E0cSluW10bx4s8vHf+5RtLkGGOeyCNfG4D+Lqpv9PRPKuaE8aTsBRn8+GteQd
IRgMs7eV7rPAyrweeyQ8k2Mt6Yg/bbTgiM9xN6fvSgEz0LXlwCOcGUUcCP/5h2JSSEPHYy+J6SZ5
Z263rUcCujrelimuN9SfN2D10YKR8xRyD9Nu+MaeAqTLWSvjgU+Pttj/vB/8qQLIy3K6AqDqGS8x
NHyFyvqCz5pY4I6G4tBNJ68Iomc09IlarMZctKwPQRdfEpdefjMwdv77W2zGwyNBtU8aNeBZmEnL
ydPaJvqixNRaB47J6dqsEEO0Lha+AEgtZfF+TfL4KE2fD0GLgsKNsP01j2MPDE8HRKWgSkXX1nFj
0YXoXTgMtzYueAmd1RACALcfWpRWmHXxmAcAGE4SBda4qU+3KoevF/YadVaHrOOtcAuffPw4sto+
yU9M3N6VHLaLo+yeVz1Od2ySgrzUPIAt5P9pAbhwxZyhMYGaYnseytCtIlViLRHwc79r4GaDmHz1
20wU/4bCcgyZgXVrcaWisvV0bx302snbUDoTwvQ/bG3bVRt2PDCCuB/CT5flvnCjUhBDbgEFYlsl
9BX1zXwRzbbGeG/h1jT7psrv6cMbVYyoGMCrAuHJUgsrUTixbE8pw8MddhCDVTUXA+RlfRd5I7it
+QIW7G2Zg6fObmfTXs1MqFOfo7PxEPSMWU+5yobGiLmIs0d4XEP4YiK4ulV7MGGWEFUXPutH9n62
HiEjWvY3symwR2SCnnC7l2apmv9Z9YMOM3jiCn+Z/y3jXf20HyiYen6jwHGyWb5yTr0bZ6aHt94w
cDCxZeRFLeE2XLgwxgT8tktZssQ5a0ji/nbqoBQ5eZ0VnoscJB4kz01t/H5Q8ibnXE4A5ZoZSlBy
CwIIaaH2O/Jc0ZEXnZtmvv6gB22Mxb67lGZ5cGXgaNcsvdEkf7uYGb9xNPX84tahWUhfQKx3hHWo
1j68SCAVRIbrs+S053694m9HlmI25Wju7wzY5/mDX6TLj/wzUVMMr54AI/EShYgF9lyGc80xc6qw
1yOw322mBWN1ujxSTQwi0Yydwx6FSkTOZ82zbs/b3zEb1swz+DMN6dh3eMcFe3rchAhJHUlRWbP/
haOrZUrKYjQYgHIG40wMnEq3NgTTd+WBSfncRwWXE/U1+ZhJb8nFHYijK+KW5rPlJuqX8UuoKznX
+h44vnyfJNemH52atB4DtA13kiwErE4dQgL5k9k7/49+O08t1bJPxDw56MPG6gSzkcTKg90w8p9G
3ptgzui0MLSnQghm7YhXFjVFnSNsEyaclTuwNeM0yokHTHa5Xis/grvh8SVdkmB9yCzv9EoCrntX
QrP3Ex8i2OJsKT2lcljbWQwGdLkUxcP+dBs9xlMb1HRh/tsKI5lwCaerhwH2ykXYqZSixc1zoR0b
abnt7d2bBxa9gzmhBxk3aCMKsVPTULHfgPIOgyHSb3fDU9OVk5c5aOaw5mmSdZ18794Az941orhW
fsLTye4gnvidK/1CB1ySAgtjxoGGeCHc5H2xA3/OQ+b0EhLtAEGyb+xSxT/qi6QJfHyZcAUfbzBu
0lDDj8aZF5LCRVRbbp87zjVXbZLnU2L1dAv8oeE3lY3emw8IjpTqgi4/HXcuKLd0SuPJckZ19hgC
jXJTY/idK+2DbY29Hn+389YATOCVb7GHFixEjwacO4tm0qRApaPnlc4uqf2y5ahG7bDULBMVMZA1
XXUZvWya8etyHKStZgt0XTVcVYKnFXlHWdIDoKKTuuDx7CCISi16yVFcUtmhbsRUrFOW+6vFbUCs
w8p6Jie28WyD8KFLh2d+yABBRCSelqithtTvNPne73g/Qbhl8jm/vH3c/KESOWoUnuB+Zha7amVm
hma2msG895zDgHxt+JAEly9lKD+XjCFEyakizEwFQWW48ubsViWrB6fZAmqMOaYsqM/0RHfTDuED
+i3mpCRuXKJtP+3Wd//2HpqciQ+28gpF+gyMW3/uk7fcMBjqMcwa4iH1erBFC76ZZqwIEp03c6d9
pvYnKeY3+B4FJgxspiSJZEGxreTZGrRGI82sKDe2Xprl1wo74QAaO1fwbyQeMLDOrZRKq/KSQyyC
ZwVaxO66rfDGvW1caHvYlRh4BnHqjdujmK2EDkb8/sAsOlSOKIV9/ghLAdZpd5D46UzLx22hBBDW
+lI8EzME187tqMs5nIBL3TJUCnKNO0VtwngJoEYASon50tiMUA4uXTpGDyo3xmywj1WpMZ3nHJlx
j1J6qQHU+dqbS2yQQf5lXyiZxRjnIfWqUYYNRNyH+cetYTcK4Sg70o6ydLCmnUrzLCJ5wLszXZAu
60GMIjeM54socO/cjPZ105T4ei0VBcezOI9fxpKFmLsI+jf5Om/mNi3UAH2OC3Cqz207mhxG8v/S
kerqmy7A4Q+u4OgsTOAAEwXZlyzj7/XxHVHGzoS5409/d9/NwVCpYNazGNcTh0copRt1qjnMb/oP
WKPi+dW4jSrKeD9ycOUyxZfEY6XrtkySfua4NtpZPzdpy7GeA/HwRTJkf0VioJN9hqGve+wsPKZL
V3Clv0iwgOEC7PoRDva+8KE0+kGPNEiucTgdvSTu2GK9WFMMJBlZH0cR7ZaV8+h08jLfZzjTSB8G
mEGNyTOj1ZfVfNwfMXb2NCDnKHLlNCNwKy5ATGfpsAYqjPwfNCubdzghmMpeJr18VaRtnCSqZQPr
l84TDI0V6IbrnCLeuoudWWxWCt1CFeX61lzmxx0N/y0E5786HF9Hs+CS7oGN42IrROHPGtR+HjUS
F6pKsfoec0pg5z7oh3kqAAJM1qyVdKv6omWGbaFO6C+5Wp803FAXjr8Q7gwybtE7ScC5o5aiKEfX
xmhQg3Wdb5J3W13YAJK/CGj5WNBPbxLsVQ8As6I5w2uWMwpUu1InUxcgTPmEGF50IM81jlcMsPI/
v8YJgkKlfnT4uNTpz6swcAv5nIhcrOzSky4GPGILMsfOgbUL6q04wWSymJHYJshiQAp8pXb3FxMG
M/E7rHpyv4o+O9OYrBFcY7rYY192Aq2eNveW5yJwhnZNkbR98Hd1Dz3czo8AIxaDdH+glVq8eDFd
eIJIr3JFF0UniFaYPFBHm3z44Sv+2GHJHslc3OSc72q1k89UHT66UZo9svWZW7LElpLxAenq+m75
7LmblrIDrhnHppS0m/R9LKQ35d3IS93Ca1r9EoCZsUxrqq0Hxl5zknU8UKFwhsnPlI86UwQ7tOwj
ZDLKx2lQ5hwQLReJs7uc+2gLUrRvLcdERu1inRgelHO4e+AixVRBOerzHb7fONw/GZW0NEW7CdJc
q1HksxYG5YGzP9sa/dNpE6ohdN8EBt7n4O/wh3hXieAy0RufYMNtGaRY9myZjsh4O2vtrTtNBR/e
QZBjja1L+J+5alfJFb7E0scQ26fuiEmbIq3xwExWgLXZKuovuiuG0PCMX6CR/NDheHNbhT4+XTXv
W7M7yjzFnygMvfdahqiAMBuvdiUrMuUx5Cgjk+HMisyewBjnMIjg9paWF2kqedbrW5jBdLyhp1QZ
jKEmz1CrP5yBFjCtCcXZYl4ka3h85x/ZF3++rb5EcYsUV1/ATPhBadmx2950PYE8aRWr20LAQipC
/KpFyx3XCtOgDt85dUbgWY7cTOOCVwJlQDvgzYgoETe/+4152hjbsMT7PGx2rSmodBuM2zF4OqGU
YE08LiqOScQRoU8OoHBx1JR3/Tf1BUWyWA8dmi2+5DxYlh/KkGvTHbt2ylPPZf2Y7MbWMmi0S9td
Lz9bspCdF/XZwcueQiNviE+JzFEdsEwzGEf+HKXyGK+k/oUk/y3Sq3NMTd+LvbCKnqWzv+qtEKkI
e4F3+zd/hnyDCSnaVuUEMTdi7XzSjESb3Sat0askP9m6fQfHcn6iJeBGoYZ7EcBjoJl2y+49ujVh
SzkapFWzTOmYL1dsNms+utBWtsD584KQIf4WebPKEKGCkUOpPxS5GqIu5JEW1JsnHyrFISRh0x5r
5dWV2whSAV+tW8EDpyDlIl3Bd5OFZMp4Py+GlWS9AiP5AAj3AEYbW+zUsreGnPhYlkh7pAz0wsTZ
UbOx4RV85VyizSjdBKNueKzYJACb2dzFgQQXylxgcjw9uW4oEECo8JMhaBepdPcJKZEeJ4lFazJ6
9/upK7+MH5E7o7SinbC4lnL5ZSbcxl2ZkW05987zUzs2H00qzymmgTNtu2ru2jQ7NpDdW7kWFftz
VxBLGfZWCYvlwF+9GJpDss2i9MtJzFfDjYgcXvVeaaPqCrneyIMh/iLmLgy9p7BdpBl5BZByjR/n
kcy+pRJMNj6ntyq+I/ZhXCYhkSmujmFCxDLl/gHyCjrG7NR//wCtPJ4wDZOKE9g5nlkXe3hCnDr3
fhYvKXMNf3i0cnThkIEtAGCh1f6GtHa4Dw/YN5Zu4R+LY98HR/56J+MmM6mstInHlGleasyJwamR
o8fGiAB0GCSk1dOt83+MkcA9fvD7rBEVlV2Q5YJAt5v3xqyUpXCbNfFgAex01DkpRlWmneXVL3D7
A0H16TB+ze9iX9MXpk4UrCfcn6ZLigj2XHeEwebCWhApl1QINP7rFXFXl2HARxNTY5Mwf1a1jiXl
EjTyzaKTPCeMJTrOfrNCF+wcQIdGz11FzwzkLAxdwOc807rheHUl++2SW8E+nTHa4nDPAS3Mbhja
BNOlvLTfFIpnDs13hGR9TYeQAbIM6LeyyiIKon2xC4FusiHDu40gdzSHQSeqqcL/WDgPTNUv9YWY
dSF6AaAAYkyi1mXutEL4G8X2OiCcWactNG3Q/ylcD/hZZr/95Ktqp8z0Dy6zvFl3FokCIec79I9+
NzF1rq1OiTE0hQA4UD0CCTUTC2Gg+0e7KPnWGRyT06P8mMv6AQbC9ovOkS7Ahd2AxV6qmrmOwoRv
WNhYRmCm6dtXu8F3YeYb2M7R7r52p75rGpO+fcvNi5pOCkp9MmVN5ksYaAet3P8ADiCTMd5IQZ/v
FbPU14TzViv0+KqSB5DHRXe/PZa+n50YhKYv6kH7TUfLRabVv4ZHVOcyw/0eGngtiWoVX+mV8th1
vfsYpKDlXsDMBIJQbkrmyniU1eeYJwCPGenxK8cEhgR4o+2Sxi7xwsKnB7Em2xAmw/kg7dMxcdTB
+BLTSgAhcGMKPFYADKbPl6UibNSk5vLCyKjCeWznSb8DWqxRuiWo1hGvfONkcDns2KRXIlXe9r7+
gO1ue38OqBafR6Jc7WVLJhpKqlpeEW50UZaej+T4SIbiZB+y9DLb9f4l09Yip5dUKj/aC+Pj3667
YtOXzM56WEwuALCD1HF4uEyYasxYTZxI3S/hrfiHYxspECN/xcv52qpLlK+jD4sOfdTFlwb7AMO7
nOE5YcMqpeTlHDCyrNHqSvAIY5a9J15AL/n/d9fjV4q9I1zb1rk5gZC1miOsqozsbJba5iQIIoi3
Pp6Bj5CJ83YpInknA5voMXjS2V78lJreidPxOxu5tXEEp91T+5RDhEKO64Kb8jSJLwRD9dbLOMGi
nNSrun5BiU1G348ZYmtNqJVpMe5KilAqP4azCkerNh3Clsp79dr8TXA7MfwytQ7+CEqjPI9XskQo
kIfwnx49ITsztlqLhm1AD95sKN3NZZWpeDcbXXyl8leDhPEnrUqQApSNVkHW6/vtF5GaqxMAYa3i
v7eKD83yQO9akDMZlfShGZ0Yc4gNw6kMEWqfUyBOhBIql1iaTClhAErJzsv8HBiL5kDyGbj8qyMb
vGTy9SorfQla1d93qpGBUP/LaVapzHCpv4hGKt0h2qEDjAOiZ3MMr3zz5QgG7few8Qtp2qhhat0S
M1sLiTBktugTSVg3rwJevA4WCXvaI4Mln1uwYpa815g88ZDlx5Ua0MKATOvaWd89+Ha2K4UFgQg6
GUkwroHrCUjU7h8oWswt81jsd5gf/aougEBDHvuPLBMwFovVM6kCwp++Gj1wfUgWyLky66vgwaVS
9oFdYHhzt5dpGqYHq0ZXNGoYoMWlMcH9fWd1nzVH5ujiHQ0ZTjM74yRv5UCMGlpQghZNl9OnPNr6
njiLiMSZuzG6Ht/OHPEqAnggKhp/vmzFlcnkendFCBjyXroGulb5gBIyNLIyVBYddQm9bMtjiooI
zhKYtn3w89F2Nd5CwLlZKEjxPmiM8dKPftDO2OPYDj8TKd/I7fQbUvIlf9EIJz/oc5TTXkx7BIPS
2i8QEDINS1nAGFh+M8fGwGm0J8gpa5r9/5CVHVrSsxFxhmnQZXptvIv6P2Sf0X0Gdtc2eSIfXmk8
SFJNaOqXlC/cdAVmACN6wdKYxpNbAltrU/QQ7G195B7EcBHZxbGlumDsDYnPCIi6ViqGXWoENHYR
lLrgIdAPkBzzS2a32mazEtVxU4VZbBi5hDlGWDciR4cZq7228llvMzJAsCpcURIJzGcGFc0A2jq9
ejyxWrckgI8QyvDqG8ETMwFso/9nOapYBpR2CzV9PMwJVzqCD9PlS8vPseRk1u2LuakFfGyHcfoc
P/BYkdzV3NC3eA5dJWDMW+DZ03fNEDKZwWSTVNWt5QgvxCJJPnXu/ObQ7atORKdX3bfI6tRzWyqw
FzViUKflQ7aP7Q5yKCdXAimA8DZZlffPqqt3DMpAlNJPNVfV3D4YmZiysH1QjLGs8fwG/NJ8b226
7bF/NY9Ipz428BsKlbofh4qWTqOBsZ9rfp+T/efiJFN86TUPkW0zH9nQbdgCb/rHz02zN23EhogR
CrjAIkW3y2yeq8l8WHWOX5MYN1Mm4jZHX8G7HdKb85mAf8vHWAIFAXp/QE2TID2wTuxy9GUenX8L
gHGVsiW/hAyLaTzrKLqg4QIz51xLxvsCXhhi8JLkBCbeC9hmQlK1t3tYS7bAOEuGModDlUY7sGoK
7KMHsuNHjiIQAE/a5UXowjpBfzc7s/PbzIbj4Zpa8sm3yXSesUTeCjHT2bk7mk7rFwRi2cOGnkaO
AXU5feGIsNJR+Qm8l4YdnB/nLPO+UlcftKsTRm57EFGzhkBcnFQXcBHi5UF/i62e3sYt19MtIDOs
Xqdow+ZHLAjWlOB48ALJh0M5P4YwUFCHU2D1V+x4AmDLag6ZAM/7AeXve2bgDVl8PAVItDJFZgGJ
qqwirgbAcjI812GT2OUfutPkDnarSm43Z0N6AtpOYERL0z1AhuiKG/LA80hiQ8PVAdvPmN4keLry
PPkYoWIAsY5SMMxsLVNTww3uTaqFEy9qDBt8jzlmJH4Iu5QA/rH6gMwVeYz1fR3U6Is5thoHzn8w
y4LNPCUX0PKVHkwqwrDVUn52O1ToSa0N4KibnNP5dYr6G8ZjD1nGtFRDgY3coVjRdUl1p6HdPr7I
WgluqSSkKutcEy91h2PV1NH6hySLXSblNr0eZ5W1paR5yE3bPAP9NsTac1v3PtD178XKVEDfzyXM
WtTUEJ4Y7vB/czENC3zIsNY8uyIuG7wn7T815+KunDhvvH9sE2b3dL00FLRn8Rye7sm7dRSJ1JlN
hUOvHANQkGowFO35Lnxk1+VkeIQD1jX8qUVBOVUBOrwLIN/YsXrGsjUaN4T54zQDlquBhkGAV8Dn
DII0d/CUPMPpejuDDQvnadqMa/ZvuFkDtglBitOFH5Wqayum8CrI3hfIJ0SQFmMT4kYSrNbiIjES
AUWmoHu4ZEnxWE6g5fM5GLo5oMN9PJa8ImLDGY1f72n85d6VeHTUm2pkXxzweJrpGeyDh+WoVGBb
ALFVWSje19350Ow0GZtaU1qXqDCRDRSNHdi16Hmcs/9R+eXaHnNp8iNgHQRlw+JVcxcQV0Cz0FPo
BggSeRJSHDENUooUawzKAfPlB1UwG7CkQenKccpCC+/f8zib5EKXuW2m/TuS7xWECjF15MtwJVs8
uPOkKoHvsB+o0+topy2KrPcAmbRmxJuqAr5YdNplNbhm3oj8Yb0dX8Y4oa9XeK56TSQaW4+aNW6M
vywWDUGxJBWJ153+rUe8R5uB+OxLKS8Tuy95+yNzq8aCwVFTaWCQRMxM6yRqVd9ZTfB87rkqEvKs
4YI9UdF/RwqMqCw7qTxr78lnvE3ewo4VTbS7ZXPpDUcG1g9B+uztZllgveanJixrNRV58bkmL5qc
F/sdFqx1a83K+N5qYMVgRUclBnqMGxoRDuOUU2+noc1IN25w81GS9RaXd6izIyybd8xHePoD/96O
Cr7zdzgaB269aaGHcvT9RN5rQwLpFEVY+uTVy2iTjQGW0Xcs50BRKeyC2N/Y1P+dMabjsliYvQwW
J7WxrdfGfL3ocLN/sRprTGoJZ+RKU6WkyoYahZxO9h1Tmm+wKgJcxzuGyYZSX5fdQ8vvLAbNQlJj
dhFn7ykZpfUJgdRpJ8b7DvSoQYMeBbxq1W/e2AshIgKrJ5yKrMoQY5Ugmbv4Jsbu+YZ/LweFrT0j
HuTN/M20P1wKRo8qguXfwecxKPibtOMClUjUK5/PmKd4mznJ6Hf8IKbezu0fwLH3YP+Labu+kCzP
mpZAa11QCfQVJwWYXJ5w70AVRWP7L9cej04mr3h0GM7auJhBAQbz7BFZiAIEBI/Lg1ewaYtXuE2f
/C9kztzNP4JDaCD4ZJ8ZgAqmMxfSzUFyhBSxzHNsJ5ToibbSzVAkdbKvx2rojJnUjlZa9czI8rpK
9FeEsEZhS5/fYau57A6/IjUdcRayvTaRB5RFShwuamKM/7Y3DYfnktg340WF9A9r/ba0r3LuAeDF
0PNUbQzALH8gfzbbW9vY8+cAZK72ZFMP8nL28wOef5Xjo2x4mDm8dWJjju5tTBZ+1Angh9f4AX1n
9eCup35T5G4YQNlCVhZ16hrCahLYCAHbyKX4AJ80c+OXhgS+tD+e6CFKYw0gzr5MTXHW3PcPy27E
43jOU4HHzy1pQfyI9DrepRBwIpE4F182uzcru6oYiWKWWBWTgfo63JWAKCkzG/NfN0uqX0t/mc0F
a2iDqhPDmn8Q90X4YOhor+0rWPBB1L+e9b+x0U0h5WDGvbeEfM8PeT2PzhxeRJUgfBmwNvHbnVJ7
AaJGql5W9wAZVCDGDk2F0gZ/I8ppOlQwGSKVN5Bhj5srzq2/I8nIUB3TgEWvtIHh60eF4u/VwDrX
DxGMMARHyyD4kiK8kdo+FpsozeXCP/NOpGkVaActRc6RQsQTbH0HvuE98dZzS/LEc90wmuijz08Y
vRABrYKCA5HpZlswiz5Y1by9hfPnFNgZFTKXG9Ej47zeDyKH9Oq0LphaAI17eL2mB5tIVHWsfS/d
rzRu9e0paHUnGykg5NPLDFWz9inWsUiuA9wI4H71FmU5f8m0Kfmv9XIjPl6xGh0BQAz+P5NkoCGM
40NHQp8cPK7v31h6yznYvocmXAW/8LI3CRaE3BivHWsGVqKy7m6ifEcal/E5Rxco8cfBvUkgJiZN
zU2saVKgLHg/tKEdAlNAvge6dWhjs4iRHKKBS3JKxWMFBTPrP7PeWvhcPoZ96DjX+1aKo+ebgapE
VqRRYwiA0yf8/kIiuY5ORoFLLmGGeaPupHYBLKg5YMrZ1aMkj+Gw42HPF6KTRvtwhyAq0nxgq+aW
OQbcUD5Q2HJ5Hfg0QZK14j66//Z7HwPeYCjQdDyZvJCs2ucw3x0Hgm1+klISCXOsAmOhP5r1VHM1
urYKemSkapMBwHZysiu3jucZGl7RyN+y/BvRAvX4j1OgGTtYuh62+ekOnqwWcuxMWk9K8PN8O6Gu
Ipon1vnAKR8yu8Hrhv2kbAXQv4mQqbFcN7MuBynjIIqqS7relISr6LKi21tcLaGbi85cbLvY0MNQ
iOjBUJjx+JOIpAyWur1m6JDFiRKshCunoLOaTWk0o5K5fStlppljLdSpoz4sXk/KaW/fBJpnsgzM
4ppPRVJwcCuvU4OfbKE1keDRWVFSGgTsUSpkimsVv+BhjelOnZkxnW/mReSnsWmz1xrI5+NXBZxh
B1al9nvwsRNwFhhlDc74lVHG9KbWshUyAKaVfF5J/W6MKIURa7L5YOaV4f9X9kqG226r0ZfP/4pP
XP1Mmv24VzRb1OznajZC5TOTmyBmpTR5z40d17alpJdtmS6lEkn2Vc5eHBhz4AgGWEhGqYqWUZZM
2U67RxlJlXZo25cOsWbq/K+UYRcnmNZEVrW+31VorpdQD0JvZF76net758lVTJSbtobdmIAXniph
tBTW1xHkUk55AyQ+isIjNapOFcgsa0+35djTY2+rfKvOCuFBfpj5Z11peIF12Tlq3DEremgDzG7J
F2I3XQipETVUIH0qc7TUlPqwG3EGLT+wuoi0C8H0TD5TyXh4zD5VeUwZm4Ri0ARqZdS8Z8GYWLsh
NU3YN8YzAVz/6v+g6YwzM+AXjd4YUxSN1b6zKnTPjzvrnvSxp32hQKBNkmQ1dCJkG+1NadAUuKpQ
+GSEuf4aaj4U9hKIF5B67Hhn/YjIiDYZOIpRR1RsG5Pl1H6kDcLSvafVMbLtHUSe8kqFjzGYBIb+
JD7m6npwjtQKy3QpgBuJpwl2NBsMca4ixLgLVe3Ap5PMHYZu2gVrsJqhK9PyyVuYGLJkcv8sOtgU
uHNMOooE8HcWI8mnml2yYO3cNVKjBOmkp/AW5fPUSkpFruWvrmF6EZ7BgCGaxx4qp9XXKn7Tvf3R
8vsEB2aqc9KOpQTSz71r3YgATG7xRau1gzRjgq3ZzixCrSUWwQgmrD/sFo4pIE5V4zh6bDAcYR1+
CWS/cowaixTLfpURVYoPrMDQEvcu6guvzVim0wSdWy6iRWDRKcmIgNLmRM1Negy827kIwOxjPbAT
b6U7yYpB2LIT/YCd8D48FNnviaN2hZrjxk2cw2HbMxhLrHZ3aMtFwer+9ql9L71I1P787cwz5l57
4c6RJm3PpgYbIZx7rkHPwN+NK31JR07F+mav1Kzo6V2sXKQfMjIAy7bhzD45UUzirS7qtbIr2NYd
2I5hjsepZMTX5A23DvvC04+QJK5VKNQAONquhzUJ80zRVNHbS2gH74gFPWzLsoLb1/UYS5tKiHmX
s8CsuMApo9fR3zE19Td3/MO/Cj73QqxPG+UCy60OVLsKAzjc7g3er+KF0lP7cDqHhhnpnUttf2WG
AynPjZgRXIzkOr9RzULGye48DJHFvVjIrbm8gYYhgL9sv/yhfBQSBX7kzpQTs2n4/lO/sZQL+g1e
EjDtCHoY2mR3Dvo+tR5XvejiA4mgB9mbIPALeLywDxl8MTpwzqwswO4Jo0p7zV/ueA9FI98FnND5
KoTAcvli2P1GdZoeY3S6OBcWT7w32+0mIEYvXKaqJiAbd1EZVoTUdvszUgCeKPGK9xDjiq4Hygri
KdNPuETODN2z4zC8mthMK7XEpxmcNP5d3m6/3Di+hcePBwQzaheosEV+S0sxcwgJOWemOcbEUhGk
u5/69pOzCD5S7mzV4IfXkjFUJLyJAvCNJc/ux0pOyZXemkiQEgRkAl5wwkRHOCRIi6SZ32C9fqWW
KKzBtcrPvDWBvabiOleZSZ3gdVbd82oIGUL/w7vZ4L+WyYc0WshA+8Vw+7mxs4OA4P9A96FkxcRo
uvfqwJMmauXHIkj6ylz7//nHcyCS4fL7Cp25BKwpS5Wbo4nCD+xMu3UJtqEmxWhbqOPH+isr6ZK2
fwzXYA6TUSraHRTbmS6fL22g1bb9eCxzEc0dmUpRUYUko6dKXQPPMKpnWZEdNEK5RNqxpAXudDvT
nTbN56v/M7QLLPFWW5BapCFVNhDSJWJz+76u/zrcvjZkDD9mrJLZ4yH/eI1jTPPFxc93a1vdXOvk
yn/etc0J6kMCcMGx9ak8MGicglNm5EOMFlwgUy0U0MkRMg4pof+Lv81FrrBXAjxYK+mNZkqViZ/i
+8ASteVWcMKOejszEa2Dou7WCmuYOi233lKZWTWFLHHpHeij0ZNpRVFKxJqB/htxNHNZZg9YStMt
A6UbcVOiQ7g915E1OerygBadslR5P53x6IKJ0P6Ke9rK44/CVsrOqI2P885+LHUVQAaEQwvr6LyW
nKA6W/4RrSI76C80NvRvbFjQevVpMc1RR0NWQFDpjSoiYOtUWsHs9NJhaLpL7YoJdG2GD5toiufr
7L3jNkgxkD/LBmU8WgtJzd7LawZVmFSf68r1pnhCiCnI4+SOHSBMD4TFvbNAEgWwa21LQLKSw31t
kMNu9DWT+T275L4Sz63wHcF8G6Jo/pasoa8eL+5g840Pt78o3lDwtzfWoJXWY/Qz1DYVK5TkerK1
BHInCMBAWdDPeftMVrhhADvCp9IZBLUHHnamKQmqw2CMKRsaF0usGLD387PM7h/Zk8cNMHCtzNbJ
jujT5hP+kmgIinYEWU8iBcQmw/KDhKnd9g9A/llOVWM1KrnsqgBQ45jUBc6e4MGJ0Cr/jitCdG9/
A+eFPsS6ODEflYL2uy8MKTSSZrjZ17FRDyF+JGzYxwkBi6+8ID+iMFrCYYZIy2nOTieuTWKCwe0E
yc7gXCCXwuF19Lg7u1BVpJ0LkZ6J4cMHMGCRpcyJI67iIm0ObdnDc55KNTCjVAjGgORYrgXCQUwa
HyKJHzzN8YmTyLBwt75cCrKj8yqkgW2Y3Lemgy7FWLlROvmvErs6IxXgcZlZPZ50tQRiKLlNxUTs
MZL3D54LZk90DNMv+MIJH77oD4nTpjM5Tbq1dAZTEe6CAu1l+TPFoHcJzDEBHf9Pj1+I9HSsCux+
qCLPJ07ZLbJkMKyIFMgV+srxwX67f0WJAWx65ubNATUNehkIDsU=
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
