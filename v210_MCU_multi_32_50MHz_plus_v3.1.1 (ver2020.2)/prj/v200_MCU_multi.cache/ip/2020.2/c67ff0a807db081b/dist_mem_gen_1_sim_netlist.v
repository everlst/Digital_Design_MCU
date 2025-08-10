// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Jul  2 01:03:14 2025
// Host        : everlasting running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dist_mem_gen_1_sim_netlist.v
// Design      : dist_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_1,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (a,
    spo);
  input [3:0]a;
  output [15:0]spo;

  wire [3:0]a;
  wire [15:0]spo;
  wire [15:0]NLW_U0_dpo_UNCONNECTED;
  wire [15:0]NLW_U0_qdpo_UNCONNECTED;
  wire [15:0]NLW_U0_qspo_UNCONNECTED;

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
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "16" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "dist_mem_gen_1.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "16" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[15:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[15:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[15:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4480)
`pragma protect data_block
ZxBPTZqxIBmp+btO/x1aa2hg8ah43Xv/kQpY2Xambr3ekyuh6VwDxVyikDbaYIAmQ2lzel+1T5pH
IsZFYxpw6XZ22/4ZqfNuBghLXnelPoAF0KhbkYHGxqesMPGVA55OMUYx6486RSnzs7krSbn0JxY1
JmAjuIpk0JAKQ03x63nHdbbOetU5AU0YQ1bLwtuOgGWKobXOLY35mQYdaVAelKKWaFc+jK4aLofP
taJRIIqaD4ErazOw/gAuI1Cb2QKfIMMkWU7yDhmrImJKJYV2+q9ECKUnnCu+gsjf2SXrHpO7w/Xr
zJgoMGh7F0iRuoGDOBQj7IPoAgrinsj0x91t+FIrwV8yMKP8Xl8XBDPcxjHJEI2YzbYGRZdrVlXh
qfGFV+wsCMJAEqrkmFe7e+hJoSG+Ai9+Z+tUxj5a2R5vqTPO3soCWBBKs9Dbih77XhUnP8pwJN6l
Hvh+0WgjzzprVS0ooxooHqOFubYoP0wb8kJofpQoH+MtmqcCHagIilzAUaZaVBxOuCnDcKY8Egbx
JVuZ7iUza+Q6pLY3z+OPMOGSmM4brkFgQ90EtYqXGtE3yoLu6ei68xBlXn3WClPGXpB294FbRcIQ
BR3gARErsWJ9rhN2w8f1o8YS2jNg+0/M9fN/IcL91U3GsxS1E9uCHmHnQMjzLy8MwyTjfQkNPk3o
NWwdCIxwTCgtU/F1/xlt9lEnT3Z1Uzhqx2nU3Q7jVTCmLnoMwc550GTgbspD6Gkdk4ZELR7CoF/b
1gsrTUPDOf+MNp15cjImb6D2r6qO2uPJOL7YAO6QnmEX01bWptEQ8ecYkV1kDfHJeDOFpmAJtMPI
iDuSPwpsLoxNDz6p40oekbDZL9YbzVhY3hFObo/YCSQ3qTLGl7bk2FVOLqZV1aypk7OegW2UBI3S
99BQH470kX5SkxFHOsvexv0NmzR4v6wpddMGzIE7Bya7u7+7aTQ5zvddsjGAENFrBwwl9BlFO+Tr
Fi8pa6MlyL/f2sFsH1CDemu8E44UMvFe1qp8YQgQ2fGfyfyOnb03q6ZQPDpxttQYrkA5gEssZFwS
v7DzG1ednaPO/e12/CPOga5jG/G8z/Ga+HYWiEHUkwuzOx+wZWGYj7TwKBykqAW++ILrv9Tvt/tJ
5T1G5t5UFtPT2Xlwjrz3qYqjBCjxH+maz0+aa7nB8bvRcAo9HL00vXD6JSfUPQawCm1Zhe9Adtux
Vr3utqNoaPLU4GM978X1AmYJiSjmZby8Bzkc4JoPjCrJ6qevvkTnfPT84jAeCtGHjiaKEM1R+JPr
xhtAzcahBucEk5/LppIxJp3NI4czyh++/5lgmrFBkDjDOtnrBVy1OK3LRg7rf7oAVRH5uK12ewDZ
A+T5E53nrPvanxlNBjNN9hkbfVUxPHKrBhbFFS6JXmjYXIDKZiP1Q/fy9dY4FD+rN7G3x1fYbjEh
HoVRPjWPLRmZ/hEUo+e0MS5K66KfKMsA3P1H/7Gxa6+MaTQ9RDcTe4WvZKBkzKkHilx9GP2o2/Qf
pJW8/ITWHij70AUrR6yQGGZ24T9k20zckryjqpUGqOhuQVg09il9/+lJoOWS8l4h8c7qJo1RxcX2
Hsc2tjr/6NNvPk5wVDKkpKZIK9/I5/WuMtX+h11FgjW2bhIF1xaWep1OJjWptdFy9+0e2EcBXjEO
R8bLAQRfdk4RhJK8obVazAybDIqdLIG6s3zUsmIkTZntFi/iadaLC2N3S2lvQTzc8ME8+JzktJap
CJPKCCrDkeY7KNlrbcLYr+220/sOCfSGR+d/3/MKNrmlq7q0Wf8vm42sSTk14UWEn6TyVt9xTDo+
wYqID4LwYgAl2PdLPbqbT5rDS52ZhBK81ckjYExe5e8KrMtUtcsBRW9Fan6vFwZRpuh3ZbJcQMTp
4h8tkCMtQV1W4Dy44JLYU4IXRwCcJcCdKuRt9AzGGOzsOzEJ3MnCV82DpAujg/KLMQy0hcli0puz
OawKBG9tBH5cizZSnBK8E1uwdT6YmTiYsXlzQ2rqc+f4yjoJ3QCVdhsxKNSKItO4jrxVzHgj7kr1
Yiuk5Y/kIPEcxL0az6kGS0zCOwWte7qySt4Sfm+bLqcRRrHDKg/f/Ocu+xItryUV8plsaYSgLdEE
m6WtP2lyTFKr6YhTkOkMb/9nlKD+NonkPlVnayx4npnqPkQrUPsb/putLTI3IMLqf84H/25hScIZ
c2Nno1J9jb/toZW7gM0+Cn1WWtKqPDGiTDYaQAzTK6O5qSk2V2GBcGwpAb4SbYUC04qWui1dt81+
fe8My+KDVzvYP/naupFod5DodJKUp5Qsm+s+C6PkPw6ItXJGwfQ+sGrdfPMe6GgmBdPETMrxeMIf
ZlG0OqcpX3bUyKsjK7A8slOJL4lISEusgxVfpkz+huLxWqK29jPeq34ahQEC9sVEvBOLauH3V4eF
lDzN7i7Ftu0kkqLriwMr5U3gTdasd9lxrRTiBgpFzEdkAch9thKqxRbK9VZE2Gjvm1zHiILl007G
/JsNgSWnfcNPegu4vNPFAWayvvbpJJPQPf+c3dIqh69E0utP3sUv7Pm9Zy8FhEVPsjiMSvSvYHdw
Pzh5VvYit9UqqmyyfnDPfeZfdgkg5gVE3JVlBrjhluRjhsJwiqgxFa0RkWt8BOcABbn9loVl8+4Q
BhDh/Tfk+H4uquVAXMQ8qsaq1CqU3SE96zYQKU9ApEdJhc7YVmIheyuEFvWtF+mQT+oNgEN1gDu2
KGDGG8C36z4wReo+Tl+OWWE9IqYcAsJDketXhkOuk7LSppJyNcuJGidNjsNKQB99COrRgf/NTkPR
x23qcRStPDXBz1o8CmYflgmxWVeRMl8quBWOONrLt1eVA+r4j4RUg4xSlJAezyVgm0pv0XDZrygK
4irMlnaRLESc8fPtDDp297Z0TjK9peljsKxrMIkcP97m78Ber1CLW44oVQn5bhqCoYIbVL7Pzq3A
07p+kiOYMTnn9iYZNqf+S+3RgErXXaG81Npj32OV51JMdpaUG3ldxZYsRF9BvZGBUCzoHGIy+IWJ
+6kEEiTWLCC2KFsUdfku1mkz3GMlzQGiDqZ1mPPjqi3y7+6tY9GaVMJIK1xG1atl96fS4ODYb9AI
hLn9i8mUqngLH/tSKwtO7G5nlTShfNTwyHTBqAzxAVZfg/U2UMa0Rl3Ncyal6SZTHhd3m0QXoCZL
2JVazzvVcFAk0MUMPj+cFNeOmTMYePk0i0nDe/A4I88glRrVgvVxjLdpUvvsG5Krkjmw/6PrbwZy
6/8wnA8f1U454e8VQO46hpeWjPRFsr9MngcZvAkc9ZxK5zFfWnuUpKrcBH04s1NB4KnNF2Hip8PG
qu//bSjGQieTAMBAOJZHvEHdQ+9djtz29NbTaPqn70ZH3OiE+D4noYt83PR9SkG6/akIVDYyuD6z
5VBHDLPEvPyqVFTMNzU2O6DX2C5vYb9ZGbxKMXtyhLwdyGZ0Id1vqmef1rzaljIeduMots35yV57
kJ5K3pe+1vGrFMLcKyARvJhBEiDUWWoqcwCw95ihtf7CWqt/C308jeq1bNEhZUXQgoddmqc+cDSn
MgT3KEgfkETYEgKXgQAwfSGxEIyM0exxVQKnZui1wRuWhW4fRzgscSRmclgVIF0utqEPX/8zu/ct
FA3V4yYNDq9zyFr4FrPhoiZePXgGX+Q1d+9RPr09jbC2/YLaARMxyOJ4WaIBfrRdEbnukpu0qZVZ
AkrYl10Ss5y5c8f3RJUjqHAW3A7CposYDtQ/Epmoa6pQ/GqC4fhE2Vd3evQMQfFHZUInQd0hzUA7
Jijnj3VihLioONduictl6NE8Ej+RxVStBkBz4so1VvXJcuEWjeY5iBQNEicQ8gR4PYg16MvDxxuT
dsxl13WzjwtguR+ebmi1bpA2eIgZViY6WtDT14PAe4NBGqnXgogdLBJgtjw1f6vhWw0AADQKOytI
vtWZ4+E8zmEEh0HN70U4Gh1OnNq6MlcXJBgV06nDjpglTqalEl8GPwIXukKQ2e/QKGeJtZoFE/j2
L4KNm4MJwI9kL6ZB58DUmZtiUiz6C+7TaS30yRu7Vm0HEgvEkidtGqQOpRJvNNL9tPXmyV6YTJ6P
bc8ZWBOFIMmmKziBlnk0E1HGYCE4NUvvGXh2XvaUzvBPe9II+5DCNwK5cMLo9jGa/1p+xChovKwl
3Cyfx+cyG3JmA4CHthpWhqSy1mjhZ9yDLMVO+0GrvXxrpr5Wuf5R1Q1PCnzv1uDA5jT5sRVelaBe
pj7/fvQ26WRxhCDhF7aRRHrGLkip38xeDJGnpsNzDhfwhm1m3uggOTuHfLFgliwXkLlJF1OF5bVh
p0RQnYfGIe1qFaKXYhZ5Xs6RheTYQHZaK+ztIA9CtcerM3xsyF6NhrhsusQPy7bNdTuvN2zoc45n
ctr/7Tz6/R909dTDI46AYH6xllLoWJORc9Y6qY8izh4ORcB7cwup9bw/rz7xskGu43eoPLGOj6QT
WLsCcxUgLCRcZAQxHonyPHQbqgMkNI612Oi0dU/1Ti3xOgr4ZHkglzaFm59eA4EuR+DSPJ5dml2A
/cAc/RDQOTgDD6fH/oJGBy24bpaFocmskjdNZ4ZePLP3/dBDzsYPRH8fS1uUYH1anwR7aEuPt/Yc
QD4s28shRrYRUMHPGXKi66rIuuU3ncFRHotzuFktQDC03Ged7sf0V+vWic4AE9IJ4jHIHhsfNgpO
aV1YuGRM9LwmIc02XdZ5pp432RJxWpPAsB3auFCFAlB+qspd65MywIZp4HaVrNyowtyjkPGs4Fog
BbNnR20KhbvnCJfIQEG0WULHBxSI1gKucmzbbUeUrity399qfpKLVJ68UrrKrRRLEWA+xK/TfNo6
3+iUWCDXL1SqgocebJf6tVYJgFI8ret3gDxYWFeDqzjHKT8mylGz/xk+wIZYAlo5m/qeWZvq3/Wr
iKoQzmQsXI1AOZw0aaPnj6WLjN5QVIwOD7bZdbJdjqjZZPCtl0Sba/bszAfZa3PHvOtFtbR0nlC+
4TFcgU4UJT8SktH7luvhGh6yq3NalENu1C+d08e3REC0nHmGGFu5yBwaZ9A6qp2H9UT7f8gtveFk
xnurAJHuERcdTungX1QYKycSxK7QvyUepR+eeQ5tK8WN8aGie+x99kaOFphU0c7h9+PjCsOZPuyh
mIQQEoH7fwqD70p1AklsV8LX/ooOq+gvs2kgxvBrtG6i6b7jn4geXYJVmCkWnNVcEG8OL32VN689
gZ4/T0B4Vv2+MBNxQbQMrBVUwx7/7+6Ah4Tg5KLklPXg02PQDtwzdn8LVOAobX1kiQl7iUR5kYjE
HFPvKD4Q9jE0JmQR24kx2IyNL6aq55rVQlMtxd76zLHrqSWYe5UMy+RQ3bKsCK8WKwhmAafrZ7wL
gs1RxG9VwLeu9jsYdU0fU47mNQnVKu8xfNCNzvEHq2mxU6V/a9kcT3+zXY54WjK1wJ7JhhnNXqHU
a7FPrWm6iTKm5fQugUwZLETy4+IVV0hDlP1jYlFWUE80n04zl/R2e1AnS963cD+aNbL2wFd/e0kv
I8zRNKfoi5OPwbgsIJWQJ3izNz5UQDt9vRJ/bltxN27bXOq6ChPo8o6qaH2ubmbFdapMSkmzj8av
4oefGE1PZ5DTABYhAcFMLGJYtHter3aKSmiilCBSBtC1jlI86mmRd/3yl4vlzfb4LIEZqr8Iq98o
Evxyz3Robt6Og/sqP+BQJYVC2tfrvDDppk6svDyNga1DzJsRbTbk7Z/E4jWqpiq/F/kPct/gS7eJ
jogMn/S+jmRsOdT8X6w8CQGLT5iTW9BO+Cb7CWHJ/c0+JQwMg2oX3NM8WoTAV4XKqC+kKdwdQXz/
+LyATcAcCZDZBrBTV7YQF70znhQJEwASA/LxQr03k/b9qO+P4HeFcUm9eV3qF2PdIyHboiaijrhr
03r8p5/JSZJTk0GjSyeTjyMfE2nUWhpI19yHwSBDONi35g==
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
