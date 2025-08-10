// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Jul  5 00:41:50 2025
// Host        : everlasting running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/GitHub/Digital_Design_MCU-main/v210_MCU_multi_32/prj/v200_MCU_multi.gen/sources_1/ip/imem_0/imem_0_sim_netlist.v
// Design      : imem_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "imem_0,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module imem_0
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
  imem_0_dist_mem_gen_v8_0_13 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9920)
`pragma protect data_block
rfUCTy9ZKJDi3r5hYzR8EzBnmMaOeDhuixhRtLNSYatUk9rayRL5BfOUpo1QYj4TdgviexR2zag+
mcj122Fy583AvE0C/thooqY9KyvWIMUBup/Pd/aEvTQwgwXDFl4UHdfUZ8VneJh9u7X/CC1xT6hW
9cCzj70Mun5PdwUYj4xFZ9K6fZ2KLU5r64a7yxUeF3Uuu5bKR917eYMx6R3y69m2cxx2pLXM2wzr
JHl03Dns76e0JVlZHQtU+6QcyLdf5Q2E3eqORXGlxf0EU+z0kBXw3oMMWakjy/Lakrky/MTCNZLX
WV7IsBdXftO4Hh7GNa6eaTOaiBEh8km8RkLuvWXXzvN2n7vqbSP7cCuScZfriEsn1xfptclobRno
mIXkI0X906fP4D5LzaaO6x94EWKabjsB38+/9K1SkeXxIsbhcZvI0wVrvUcC1sCxXz0FIjXAUHcy
nHRpxNzn2H/84RqC4XdeCnLEoXOFnPYkGJCKvG5zF0p5kmJhkVohmI9Yn0HtcmYY8eI2/6wJTrra
3dnnj7Po6yR9hP8iTo0jWa4bOzY+BCB+TY0mcP4t9j+DlfFYzqNXMjT+dckpoNrC5gSRRInAKuQp
6Ss3zQ6Bt8wCn9KwpdmvKTzrDpcfkmbYnbDGkQchAXVcfwsGfaR3dEIZ1ENAqFS1/lv2b8oWSkCw
MxHaj89nFKiyhNiI8/AIuye0gi0IwvjCLZy/H5/ryGWdxvLVJLDEgQRwngQutT/8B9sSlmBMVD8A
WlG3VWc+DL4m3/C40UVhecgr6zxPtFbSDcg5qXISUt65I84+4cs7G8zFj/TIt6jWnRfuE4bE2NZ6
6OpABB9uxejwNkGTftI5aPhjX3v6vheTa12QiWluFjrj3G6GUelHAA0OVNN7M/Md2aUzGuxg5Mwd
BGAZpVHaPSoFK39mGfpH3zuuVHUr2/CBfLXnPoRcL7vof29131XzayiaDgOut/xBqMEVl3nhdRQL
qfslgbdXgd8/f9qWCQA0WrN7D7BDfct0CxGgP74rcF+DCgSuqAgOyYGGdnjV37fqjITiw4lPWuIz
p/Ofp9lh4GiV2N2f65ElgyJwYz38w5CzRhuS68PHMaFkIm6pjnWmzLnL5LGwi3ekAbQhVRb71VMZ
L7bbEfEtT/k9OJHomJxI4rroGIbzT+aJ7oIXANOHajdqZ7UHtm0KyD4/t48sdTbmIMJuoEAaokfI
mbYbCboXVC6OeFGuGrl0M3v7sYUe2uIJl9sqS1HWV8DZlcltFOInQbF69UxeXgQY25FR0pdwbC0H
wjPE08U46kIFBsQDHim88hymmWJ71Jl9cgvok89Ef03DDna18v6horJqspxBp5Z1saYVvu+M+XeF
Ah3peiuvT1GauOkaWPa7Hx2f5kllcrU5A8+b6ya9NRU7nLXTd4sNsMz/FikGirrxgopqKNL5teNs
VUg1viFWf9TIQuA8FH8uyCHSfA84mbVBoE1xONe8l91/aIzsqMsfPUZTmFHgaumojpGPZ7/tZIX/
9U4XFNkjJuPxYNMj9y8HQAOJqoW7qWLC/zkq72yw0j6O/BwLHRzybKf+y7dP/DhTEkdtHcYVaoE2
OZriYSZhOREOndA8Z1xt4wiXiGrd+bxd1lmxbl9+tGHojCs6zQcQwVpBT56GvarYmTvZ6ho6AdS6
u8mXXdJptWfeKgloFGVEmS9TjP+tETOQs+/QB3RydmZ/JziXIUBalsUEmR8WpljcGAKUpuuTOHqr
clT0QZvljxZ2fI25IxqOdJtErUUgj0W5dXKaA4XffKm6cq4GB3bPNhcoGRM9a7q9PtL7nD8oQEtk
YQOqiU4CnK0gfrDcxBrkxjfGrjGvO5rc/RxmhlIzm5XG3XdPpeDsOm5xDaKDVC4XnUBf1jyTybpa
Hvi7UR7icndeaJpajxiLcHRQ6UrC++VzDQ0+8qzYD0g6YbwupemcEsrcvf4M8Ix9BG7Ugy2DvHs/
HpRaSYk5jeNDstlMXSuZLt61DpKV2g3FP22rtneAE+iTQZuz8q1srZZSkk8R9mKdnz2ZOo69qxPj
O1D07ngEt6FQUWdDYmBNfdL3SH3eSjBKlOK7ctMBgJmsEudteeqmZ+zH/enlKkqiea3zSimWHYSj
77eAR9SaaeTR88Dzho7S3A7NGDZegnfV4gXNdVULgHMampJLdfHmQjQZlIqDprlK83Hc1iTNg4Eu
589u8LS9R+EbWQVTl5RbQa9xGNZzkfId5OxFxW8CkS7eZjF0NiKfnlLCwO83P43i0uZwFTZNfFvj
jsU+oOcssxT3dBVOHKDWIA6tasQb2NaCltZIlJz9S8U1F2iRU/69V4WC/5PMATDHDK6OorhcvwLI
vJISeplUwRGIX1dutovvbiAEH81eIUOu4WlT3j7xsQG2QV2QQTK5JNyeZfPTykq7O3m5/aFBB16o
8WJz0ZbHN5SL0hpPedC504UBWjBxxmdvRJ8a2c9B8qRa+7DsA+ZyT6dsohUoInBXucav40fHAEg5
n3JHREuU2sNClAw2Mmr30GejNovNEo0SSYW7FjlJdPT3brWQKXfkALMK/DLOnX4joRqhxI4QSOID
8Fhk7dn+7e00DBfUAsYGc/YzRZo9PzU4/Xn1LrB//uGVZU2DffiIsyvrlBXjpPDaeQE1a8yhip/j
cAlV3Pp+B8nsM3nn9w0iS9Cxl1XZK3A62l60NieHrcgquYWijjCPlzspFPdRrABr50jDVJHppTha
4KQcpKj3H5NuH0/S9BLFTh+/Wm+x2xMbDcXXe9QEKPM7EuNLdAlk3lDnwLPPQLvEbOq+91pnYSnr
yy9gKn9hkZ0ngX8NgrRV3PlwnfbQ2ObRdZPDs03K1QXiZpL82emqKsQCOo+9o13jc5msfMUoSbrR
+r/7AjqyOKumyOK1llsnP3UhruQJhL2Fq6Jy41+j34KxPMzk64KNgare4HWX9VhDevy0nXAU9gvV
oNjns7pGigQLYvALSZ6PISeFyOBLiqOV+FfgX7K8zt7jtGaa0D/5HT0KvgQ167jg4ifEclSc8N6u
tFzRUYB6/jDa49CSuBKh5Gynv+IbRvyPbpwrPazmJmiZ8xIbwOYba5QKnB50Q/tLKb7AlCF2moTt
lHWrTVBZE3nSjKrbbArhkx1pIlfWoNOTbLMCwtm+4oLgYmemI9SV4iup93cigrMXSW+Og0BtPc7n
P/7JGzvlZMdUm59AvyHqr8iYphrv7ycJD1qzgmAlbIF65sF7dI6XXRubfkFwLyrcWlXOUcOHe8rI
YhH2XWQ/2v8Eu0CO5jICF9I2//a4a9YkqKxpewvxnAW9nO7IzlEzQa89PV50hKKFpXrgaqYVlrs3
rWFAJfsBJELHScVX3h74Q/XGqyUq/5J3izOiVZjO4may8bz8Yt3I4MiVaENQTRXk95J02wzJgVF2
9DzJLdwZ2Fo2PQpQLOr+5VrpZiY4zjUkWR0UTBY0+dbTRQBviJmUCrdiHYC5pLuJLS/o5hdtEF3y
RtBOCqlYQSybR/VYPs854ZRxEtGpUiUj57zJWiLnXvhQj32cU9kw9cu3Yb1KqDX2BtEDxFZYW43V
x2QsmgNuOKddCmBosNfHwuGIm6qZwJ1leJHjLALvkHscqIETWmpqP74vFwE4Iru5ayG+FjSWHfd8
JjUcFNrlBu9osUDNQU8n5RJE1jVdpu32tTXxp/2erumKEyT+NeHaTa6UHraUZOSqsaRMkNAaxm0Y
91Y15lYw3Sh4z2XVhPPVAylM5Zfzzp2OdKx7lupkgrdXsi6DPKyJ0GFCe5uHSO/pxECnm3pt6NYl
6aMcmVn+tyi4qCsEBYuUxQJErXMM2vHYWsIh6RQRr6AtTmsA3rmfmqrH50dCiZu3WrEt5R6k2jXf
BrtadObChH9+geNZHkzdxvuzckuox9yr0CCboj2ksZe2F89eCDZiwkPQhAhC5Y4Si9e5DlzKxDjZ
0s9XsbjKsneYDaWAHU0h2PD+Yl2fbCcjeBHKde/Y99zsavMM4SlkCRAQfj4Q14Gscvi2BpZHydF0
3B2Bkfs1agc9nz6C0HgL+54y3Jjt8AwqDxu/EhEVEP5mbSRsW/JvCUVGicLgP19tqpSA+32DuqiR
FA2hMTGV9eynZYs8ellsyr54VjSYgMf+7ReBo86PugW09BOtoaDphbNMH5eKpFBl/xBnMJOhD8BG
FHT1jpEw1yv+81p/4GssWAQxMcwVYBF4Tq0MsJnYL/fF9d88ZESuWMNuJVASX3FL/5WkqIqmjP9v
jiHv6+Dx2vLCa/7h7ZfvWFWzSdCngtLi4tfb/V3yEx19PBPREOPb+ZCZFPVNEnxhvICzZLq1RHua
o7zyJntEg6kf/zqiGASOlvifTgLhI/chqC+4pJ2WinA9yJtezLtMSDOxytfIhB+sBjsXaJLynrwY
fs5jbK2uwYjk7qfVDcWdEGw94mhdN3JSlpxTUGRFTeKRhU9253ODpF8BQLjECBgIfbRp3gLtiVe4
gqYsqzkPSrkoRzdnr09H+dU7t8G8NFgC6FWUEfjfVJDNjKNaK45meEiHtsoXMnb/ST42PrhLDVBa
iO7Nta/PzEo+rRqM2i76D+peyQdgZMbgxO9thp16bTQon7CKf98pN2zNSStFmdM2Nss2koLSkTOY
CPlO10tIw5lEXItX9vxnBSmloZtmJdSIS9yRS5klQHEg2UL1cHZCFAM6b0tPUEnIOZj/hfwAdN0N
U19aYfw00Q5h5n450df21b8R7LO0K05ktYMQi1qKusITtH91e8T0q02nyUhekd5+oU70nzFx7ZdG
gZnUeIbsVQfjjEXCiW58xrkSkZvbgZXD+nAcPSd8Md2yr3ywz2I7f4vo2eMrJjIlgtr4+ozY8E4O
Bqfq20JpTr9M+7uwnqIXbZE+Mp4gXVp0XnI3nKpcc7uVEEitzYTTuSVuaTwEy1qbtNsUECRaLkXV
fzc+/ca4J1AEhxunOQpIPmKU8KHwRC+6s5U0w4EY5RXGXTo3R73VTxoT512ghBr/YIUqlfLLp21T
8QWWT77cQEb6D/3ZA6Lz0H13PrZb/NUi5PW87FH0D5YlOnP8wyJeubpB2ZwCNpyoJUOy5E2xqSUB
mGAJpeAkynrwtJsuiP2nMTK65gtP6awnimbJwQG1FxLF7xuYat6d5lwaZaoKmhl2e/nMqGVLkl8k
Z2IOmoJrIaKkJiDP/QP9Fnh8/cuhCkeJKGCkNXErBIKbRUgZRFK/mkv/Az302Q/xs9sKxz0ppC8I
nwAKi8+oksSXN2pPWk5TazOF5g5p1NRKyjjiUuCvJd5UvzuHK816BKt/0Vo8ZGeUx3JWqz47n9dv
zA9/v5EKMmGFN9oXYKwKr6qCQOMTNgNmmFmuPFvvkbozsBMU+fgAx3nEpn++pFejlyW5+xHMY9fC
IueElNAT7Pz7CYjwkntw0NtsfdPTyqxHCMXg/LchWZfETco9T/UZImKBPHrRmaQeYu6OM/sOvT3y
BmZNGEz4qvak61lWzv5K2xGPfS94anN9GOpeTe7XNkCy7dj368GMyrljq0ixMyuncUBSujjHcSkL
R0tjaL7BWbBrH+a3mEHsw5qfW3vcKWZzCva0i56AYB5hUjqReYePzNTh7lTl6tbkB9xYicC0V/4+
/h4MiIDdX/csd2flnVZdY2RutRfnwr2Xtr+9yqPAUlOAbY570GIpG5IwBmbyRcAuA698IIQHABJg
k/7YX2maEjJkgyBLOdLC5V2+FajHAci7kK58D2hgl2wDNrSrJyybLb24DeDRi5XFOP2gG+Drlssm
PCTgFAQmW0Ljtp8w+6T+6brCmh5LJriwyzJUU9TyrHe225HOGZwDemz4KnWd86/iIhsIKAq8oK+d
HBAgzVg7DTym9ApaAEQuPM5q+zfuPE9D+4N21ODBmk7pCpZ68pbU7/7qhL44xjMoTlhIDWNZMjVS
PuOQEo5PNDXlT8VEw81/rThSS/Yr6HLw70cm0E+nrUn9r+hsOzxEc5W2UfAlZtljI4GkML/4zvmt
8sKcAOUoxdLplCX4mqWX5Uu6ebtMnDNS1WMdLHfL0m5Hy/p3WR9iR84d782fwAQW5P5PUgBARV4E
gfXsWqHjICgjeRjLHmXND2vmRlOlSlNwqqN/9qIrA3wF1f5pubukho7tB2GN6oL2CnPZ1Tdf3uYG
gHUrmQUmLNUc8xYw18CX2WaAT5IiXmL3ItYvB6YHQ4S1UdAWVKzBsl98VBFV9z4hQRfP0Z9u2hHt
X8bGKTlHYL7OPVYzZSwbOiSlGpGfRuCrkQwrvxN/QMNYV5yqkZsOO9ltF3nkUxmEgrfdaK/Wnirw
Jqo3f4cIt0yBo9S18DleGRFZZ5wYHODcUpRh1jce2kKsDqrtMjAuYmyE6SkGgeAYFfJ6bB0hCrUR
famJBl9z0HuabBMWIaw+xX5PWdGDC4JODwJCxXqBDdGOo0vDvdWbxJtiVu6RBFPvMkN1PCNN94qB
Rjnqs7vnGZNgUSTh9ST6HHxXPoX5iCxMu5ULID3ofUsnau4GmCwuElb3xmQRujcgrFxq0t0OCLT1
dZMhxxT9tDm8ISyr7RfshNS5Rp/BWiemn0RiRW267MjJBkYfSxYsYmfFN0XG/1v0oqRXh7adyOGG
ZcT2Uq3iD3vSiaRsKWKXSGB1RNLdd0T5hUiRxmchPVDQFZeVxT8xz/JXd2spMNuHlNUwtaGBHVXc
b6XhOPxkAZevcoupfV3sNykgMKtCi3q+w/T7cMmK2xY9Pk/2BUvkSduMjCSiAvu3sVJbPUO69aku
eU9FZq0iCAAGIVyPR86nTr3HAwCgtZeOAoO/sSWD90bjEfW9Ca0DNGZ3Ef4Mg6z4XNUuVCOR03xI
2aaRzpYGksJu8US+iWMWp9B0pPAfdoqUezni3RFzGsxCcgSiJcjfHpdEb1uuz+w3ryzNeBVi19TU
6jM85KxpuGw0iF3D1Y4k77LQiWRLHG/3yExo4/WJGOSz14aEWtLoy9CjgiqBGYXh+7ig7+KhtDJ1
hdeplGXc5ahPQiiMm4Ag9iBFXlbh/Pg1GmS0RBH1fD6Dd/WTBsID2ZmYzfYO6QjZ6JS17pP7mD2/
+6ULYVs5W3L1qH+EMLzhTqeavCO4cDUxTK0uE7P77QOhUpEgT8H5foNNkWBpaO9GN4+D4tATBOeF
cbmMsFk3ECNZBidUhKt9zlLVRh0Bh4uK7FNtFbKrwJroo10O9NoDdC0eI0rUqF0vB1SJH0UZrg8z
vgmYMfR+wwns1bL5bXAX2su0zT5rMjyXMQaCMQ3LAOwLc9cDvVzbqsnJ3/OeTpqyY2FTrAR/jKiG
JSK0SbbGYnWaakW2qTlfO4yafA4O7dRkMRiTaB/2y7fJ/zipT6YRZEJZYywzo6RM9Vj2tg4l56sw
0OKxa4MpRhX4FDQdMFVW5mxznOpuFf1P2AWXDBC+vo+TEmcobX61gwA1EjVpVPXig7N39iYHa1D1
tmfhYjSjgF/xxKT7wT4V3QR3OjS+QgIBp4Z61Tw2sZmap0YeD/jxZjxxsX+fdiEOk5jIbPLJDJuZ
wNjh3AsvwYhHRjk29jjbw4Pzt7p7jLrOT77k4Bqhh6oCGqJ85OzfNhM/5h0cqFYJflYzDQNPEbX9
6XYGKk/VIjEL18EakZT+2XoafqNHE+YgBIwmtIwPEr7dr8zb9X1CAytBHsxj+yvc7IgWNA8B50Yb
sB0HaTb08iYm2Mktdou2h60Y0iSK+5DPavhhmjXzjZeKWnOuu6U16v6ojKjgCXAyqzpWFxc3WnLD
ND9qu3l7KKuUbYvZY6iyOEhVmjK9H6Mb6+lBsKC6OSaOKdBlV+QYLYRjw7B7J6PN9Qy6uqcw7DTF
nKHETNcGtQi8zN2ev+fmFNDx7kuUk5gCrpsAJAUAlSoH3N1Wbd+7DdLSOVOXoHabShZf4r6IbdZM
JoSII2poik8LTmWw7Qs3eSVbbWHppcbxF787G/wh7Ljw4XRnd3X5n7WLEpUaAFsc6ffPKT7C6Kzl
ACLETAt8XA0M2cmwktjrFniDCrWLhxZlp1B8Z01eBP4OO8q7Mg7Uu4F2Ie54Fcz21dwO/iJBRQRW
rkBmGqzupTbt7Mx2vhBBUEq8FcMq3IhuLVpKdxRwF1Swt4GepFC6kXEpxwDxJW52ecdJ8vGK96uo
p6qryeDmN+2we61ra/fB7+ayqEUR0fVRFkKK9rG41lqQ17j0JM1BdqrzYp78MhSL7T+MUTZzewpw
x2V/uigAOMFRZU5AvE3t2xf+vQn1C2UrDwx2qnjDMC/lIEnPM5jzUUnE79WDs8MBhdnVoDRwH2Gx
EJE9MwC5oB/Bqzq1Yzc4XJb6ALrXSB6f8Tp4b7K3A1fbjfLzDm6sk9MFKLzOZG5DRhxO8TV5DRSf
53IMxg1Bo0q+6mqHe+ZhiAFzjPh8DVplWkudw+fgdV+DtisCpxNfeKyBqogqFxrwsNFQmzbMCbtw
PC6kSszhF7WhQgwW2/IF/K7py7tUM87Q/KmIuWoB4uSC8Hj4I1n28hxOpjG/dYU8siOpdGxKM1FX
sSo01onkJtDPj8i49dy3pOeR8tgmq3sHSVKgQNnAMkUYSntjt6cjeNtPcBmUuHc27VOboHDdSI3P
L9FkZLlOiUYKRKDUNGm8R+F4O8X2diawnU0W3rFNgPSN1pJCaB0adfpDtrOaWmcF61oOCfc0mEX5
DBMIe6obGhsIoEumqmLQniV6Bikrl1DvLXI4XD8fVqZowlQd5Eyc889qOvZOZdOHhsTSQVIts+7/
+zVshlvHJOBNkhoitjJVBM0nZnzDN/pJUD6xSEqdvGr46Yx1mnjMSIhzPXU9Z7Gde+V4dxXKOKTq
CDaDVrKdjW4Sziy5y4GXiIhih1l9uzMkxxKxBkEk4qoz01eP8T9vi2s3eng/naC2XreTGrc1WdWv
6i2BC4OoAKiiA8eQblZ4eqfwSZfpV+kVv+/IjCiuXeqgchyB6BVq46+vEJBelmOwcXipuoZq9QW5
SmU6c4uD/LA93VBiFWJxtu0vKgbpSdHDN/By7033hIZreTKB2o+5Kuc6qhOxG1agMx8YZTTmg0pr
N8mJQklcvjSAdv1NVi+rayDfW+LFmqQjzBm9ls/f22iMn4bNV8UpNXmVqkih2eGQKBhL1wOoQ0l1
0OoET0L6yJlgc0jfBdsnbMAdRfK029gBI/TWnaFKULvKvMK9o2gz64WNsU0e4kpJY8nliDoLcHMD
LZt8qG+MWe3C4q0gOWiIAQM+nBfbnsacUB5Ppul6dCAG9Bn2brfXdfWH0Sl44QScpR9vyZDI0jMd
PXPbhCr2MUyIzM1Eey5iStOZWDiX8pJVZoATxFvCsHAKk2BoRzdxwRhlhz1c2lvkj18h8r0CmyJy
/7JiDdUxgOCy0wOwYwKaXf3O4NC/1PyDeLdBolLC9zKJbHwMbBm3CLD3pIqLK03pI/IuyzU6hZU9
W6Nt8QavGfawbeFcr0tAk3bE3MkHwMzKd8Sc5aEzmx4+9KuOkfO/Rxa193L8H3nBL5SiBgZZQKc1
sB19Kk3sULhkdKFLXa316fHnIOB9+2j1tjtQ8DPFGSngh3sirf8htfmg8JfSfZ5Pi5G6BXIJXryv
CmpbhprX3OELBoBS6HF8OcUqEZ5o2nXWEzT2pe1EpRD0Ok8b4aTD2nPOcyuxMLU1aEQSLQqW83rQ
ED5zT2BqtfkD0A3fY2/He3hXtQfagswZKoJixsQy1ywGsPGF4au58iiocamhU1KSJyiCefEddoKP
xQgTMbhX/TCtzHCkbSpoWwueQWwZtwRQWVLGgSzcQHQMdxJnnoVldy6aDt3uxxTKRlGLrKsta1Oc
88fBc4KuIxiCDjMy00z4w8rTqibDluhoXBm4rmJXBmyVYLUz9yY1kbPVx23EEJS132D0agszmekM
rkBoSbPO8Y3BaB0VPg4Al+oC06cWnaSLW5jky6WwO10Xv0IUrXC+yl60/HxBrM0Z+aIiHGv9cfcW
3jMeSlSpycH6GH30ZoFfA6fBilIl/gJY+l/jtPfEjwjG4ZTlRNK3Hk+7A9DT6KlBgJaQKiZH/KfR
WuZ9WUZBDk60DsB9Id2tyjPuSQKEcKl/vIoUGiAXUNm0FdgJiyQnQhDo8MW5AenxCr0lGXyO2iwm
o6GjxU/+q1fPd4r3r7131MSNQ6EwbKRYrohJPUOuawqINFZZy9I4Cwqop9znyenwadkrJ6Le75QO
/wD3Ut6O8OIaJvF1NuqDJyRn8wz2vSlrW+F/PJGqb9FX79sLf5JF3W9Spbh257brOfL9FKuHTWlE
IGI8+ov1Zu1cSIlFRlAfXj3x43+2HdGEE7+5F0TmEPFwwamThh25YwxvNygK6Rn7XD+CMlkI7trP
6qHoij6I7e9/2jFWJhCxSIcYvbyZO2jdsy9UGAO1Zyjoqltcra5zHPxMaeQT2Q6E6r0tW4CwVWjW
0UVJ0/aBLAqmAtFzjggaPh7AwghTAc7cQ+xPPG62O9DXFe0GiIHctbcIo3D1/12dtxpimbXcllnf
OFW9CLImlUtrRiDU9aGuxY5ngrBZAaV775PBds/aHMhQuGKVOuFLodulbKvTt5m/uuz5f0ATiOsz
+julQ8uk76KUuT1Se3vjFCNyz9pD0NImpE1jOnLMOok1L33tiTRYrpBaK2TiTGYgCTC2dsMina+j
UJp8kMcFdwakedjv5ZmusCRn4b8lxju1ceu4FcCUGx5GhaGmoN8VlaboXLljY+FLtKIlkJqbOh6N
zo5Hr5CjGyZVPSEKCvbXZ0RPidu3sw724BWBHqBfcL7JWlFGMjMa5/wjdHeeQrLLmMyMAb0Wi2Fu
9kyb9ts7fVQSQz3x00n9w78C5IVXpAKDTwOl9TjI3jcwOBIYumKCaWZ+yXr3joTieRkjppivOBVo
BXL5oyfLALpTEqRBpGVS6+EsPK74F/3EfW4FI6/VswJGtN4T4ZCQ7S5MGl1m//BzcmAQotpVYOjN
2lAj3fa2gBGhA6igmNJwZ2b0xQkWPzWW/j8TrYE5ZR0hPabMQ/4cILJncXCbOVsxWFzbv+nH2tT4
D/B3MmeC6Xtl+P9p3RZh3MnpIRISJA5eBVXXsbWj+pFoCvVse5oCamDFh2wMsEmD6Da3tIgiqg7R
Rn0vl2oM3fJ+6SuKXCS7PYj/ODaD3YGzICt4YdJXBKwRW/q0n4CGfHD7lrRXsvLtlyNpZTHgF7Sw
kFp6QcqJ0qfoUxKddOEBLraq3TB36ojUdT1qu7QgdcExnFpUjzhKGUOB2sM7dlO1vDZZVjl5Vdil
TaYM7+NKr6/gKw53HGXd18sXtl32fLODgDE5mEzcOKmBfO/mGuwnteegc6jCs1L6p2K1XoGlnlWu
1SflpLYnfGEEp+6uAmSK9liTZYxeWWxK5JXMcEu28POz4OAH+eIFfnIDWlvrrWoKtfhPu1vAbRMx
u7G/+q3f4vSHq9ewUx0Z8pMcgSbI1E0poZroG2+uISb2Lst1e2QRC1gA7QUvJ13JgyNRUkPbUEnW
gq/+ATncLDqjwyiqrVrFW8J7ItkI9TxMcFEHFle/vx4sCilCtPvp5dzofE48VNdeGCzPowQccqHo
C+TFAquHS696q+OAzs9IQxc13J/x7C6tfHf0+ottqAcvhhmsFLQpSkx2ahqdPOMbc33tquOZO8Ha
Epvwp9s4oiZLFlnfOVQRiHcuqy7+HdlO3BZZdbaSuJcRoCSfdRSOHF3QnhvkcOW/6PdzN1yQaeRq
Pu6R5ehvlhy8PUWqFa4pSxQPLCnrY+donUR0kQWUZJ86vAkppvhGs72nzDOhI4t35HGpUWCjQjmE
9AUcl5Xfs7xXgWN5It3CLSjhWchD02+UAklmH8iOJfXD1oQ3/IiMiDKW85cLr/QuqYnT+sMF4ofm
2313LlLNorZOSRhGujo7VyQas3PM7QHaq+u1Q1X3GulMqoXnOGyrcwrVE9fCh1iBerbinFXHGWxK
uI5mj4riH9Na0oNqDzk+n6ti+ofxgdM28WidCvhWqY9jAkw1jximAqdOi0+t7t86VKeTlq87ttMV
xq+cSCfGkKtJ18zjoHslvUX0hLeN8T6djlyOLZZNRn4MgFRgtyQlT/QBTewIMNQFULNBwhxVAsC9
WyyhVzMSdpWEP4dhWKY1QRXvIMntu+lplqtwI/un3HiIo23D4IS1+e0VAOaqSuJTNRWd2L7m+X3L
//XyftE5e+Y3H7/mD6ywQOcmDE6qLN/O1osjp5y/yD6y4eMewmOFy8Iu5ROkwNb8/Aj4eeWhtEN0
AGiRJE9VQkfHBN8RnHEKA1Xwl9nN77wttY3lWueXFbnwHx53U+VXQ3EvfWKtITcopXeg45eMuEB0
N2G491ZOUadoFfvhrwg7r/o2wYymHHIn6o4+vxdMIPEkixksZ1aTXPEzyzpAgRICyZHm174VfNmB
7z0Mfaql+mjHvnV6I60RCbGCRezmZtX1b+rC+nj4lnPt9c5QN7mv0NXMcsf9chVz4w44rwwYBshl
IsWuVtplEWvYKU9Kt58iRNvadBQM8Z3EUoKho5fkUcEHs2mF08dTrnG8K9OWvBHBiSzD7ShGs1U6
FxoABCCyZB78G15bkq/0NBRTMxCM7jwFISE/UVCKkezyOkiXx1DENYPxIbTtD6wTN+JjCXuFenPo
lLMVPlsHpp64NO2kmDYui28LyfVmsqVrbDQM6Q6OwAf/H87eWqfi/xCgryqlbpPEHINEIzg7mgKi
24l00nb5s2PyyE9ZKdMSy2fnyTXnTg5upeLdRa46p+9QVMZ24aiOgrzv0vHBi57rzcuvOCtu+DNw
8mk4xntF06emHlcRLTdNunAQCwa0UbVjxpLU6h33lCcml5LIRmdmAEm/TEmuk4XOoT22OEDeFgU2
kXjI59x+IRAdAKstvXj4hDg24DP914QK9SdVihNMPepYCa3+IpsuxQCsUQSVRP62eUNGRPTWPYb5
vFwpFqDcy0vIz6u/YdoslekB3YzBD88sqNnLX9MEAgis1CJmWp0BMP6933Lt5ItaGRH3Mi9iDb2o
Jv00f4BM2M/UwLZrC64FObqBuI/mhi8Tc32AjJMRIitwRIP2UGhrIbbYTwc4EnhVXECOmrv7W2Pq
HF2w6LphRSjpAu2nB0nX5J6exWY+HAPi0Vi4HFHyUfc4wGjQvyR6MD8zLC2Moh+Qoz3boZdjsxLh
rlnWabFoOhQ3gA1qmqNYKCmtygFZuR030w8ztqTf2346P5WH/Zs7xk62R085ZA0P2ZG8azRewe+v
8oY=
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
