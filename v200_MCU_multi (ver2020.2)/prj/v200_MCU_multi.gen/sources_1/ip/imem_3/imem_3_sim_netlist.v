// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Jul  4 12:04:25 2025
// Host        : everlasting running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/GitHub/Digital_Design_MCU-main/v200_MCU_multi/prj/v200_MCU_multi.gen/sources_1/ip/imem_3/imem_3_sim_netlist.v
// Design      : imem_3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "imem_3,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module imem_3
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
  (* c_mem_init_file = "imem_3.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  (* is_du_within_envelope = "true" *) 
  imem_3_dist_mem_gen_v8_0_13 U0
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
SBZI5d4+WLBUV3kQrIOgwSHla2qwl2nRTXhdDARFxkrqLt/syASQfIlNhBeiFcKdPB6vjc/TMfGV
kplyxa6nPx8iTjx2UYaXEEyHf6EYLl3FesyqKnbG6Nk3RjbhMEQgfoR7SD/x5zynDCbOcKlEU3lH
IuSELQH9PVBtp7lMy9fEl8Bg+pnh0GmTKcHsOjmUgW+KjawraUUi8kl3emUZo8tx49WdOmvuDUT0
GQlz/rSR9Rzi+zZdiWRks41UmBWUwm2U2OQFECQb5dA+iHAXrNVHa8P8NZb8OaMwDOKnpctP/YhK
wkqbg69ZH0NT+1MUUmfUJTFfWF13ZMjBBWgE2a8pbJv/kBdmDXQBVBdNtOoKdN90ovBM80fozGKa
TW8uHvm07gO9MrFkZLj2fk3ODHphN600bEEsaMEJE6W//Ku+gOD1pdwcYZOemew0soy5jm3BuXoS
O1Jvimo801ypJZ3BUgMT1UTUyaYkEpP6bcsAh5DjM1jj/uCgOxmjTmVOwV3rbfOBofYV6kWHudd3
Tlbqf4UsswYJXaIenng6GAtRdFCAALzI0DzcxKDBs/Wu5RlRNF8fDg55k0pz7br7wN1efA0jRkd0
zVS7lRMdv3KMurEsI3NLjXS15hgW84h5zMXY44ToQ/kTs0DoPQpHl7kdndA2QFsWwfiP1xuYp/Wd
qAyINJX95DNHZNxGT4PSR6+aF+5MadnKv/CJBC8CUl/waDpaNTvihvK43HJ4tFKrx5rG8/QGV+nF
VdDi4gdFe2parm6lI/Qpk2ExFn+prR2rZIuk2OTriWWzbINiJZ15Q7JMSgoc/gZqbw77mvQwJXFC
MjL7FcC2B4+lXFTehtRXwvBVGuEaNchggwJ4ZNJnG6odQena1ElYmkJbhVzAoXYD2rzBhuBlrmd8
UxADjxjdZTVP7a9iA8NrWahAqIGnm0Da+93NY7oTlFYyizYFrJf+XGRs82FYDJSmcfSvGgGXsj2m
u19CgR145u6euab7zwBN9pLDVwWBEjV3FBUA4ETj17KZnOX3qn4H7yMMQ1l7/M07trYwDBmIyaXI
LEdFI0wvY9MbxrAQ2bJk1VzrZfgycf2nZ4kKT5GBhspaPZcCsKY5V1TS8ABemwE8eaedtQUvaQ3s
mtDtKKkQblSofvjLURnw7vhTMhKNyrKECHOdB8AmUXS/DQl87Phei3UP25VI0DMTwhH2m2CE8pGH
Fu24j+N8mmDYrXRUPiTnG8vleA/7HsNHQRqesvELzEDlhPc1K3RYiYTfdHOsNbeSOkykbB8Pm3ZJ
koubKFhQhjIP0nZhT6daLiX6IGj6vnsOXlK2tlIaB9nomxsFQj6++eNxIQWmCsJsdqq6WjYHIDUV
OrqqZLkBEEiP2xRb1K5BpDpz9A1ZK2VYamzvXQZvRX3UesYptDCT71NrQHkbENwJcC4wWz498MBC
BtDkFt+VK6Ejb3lXcMXV/aPiEVSHL1UJhPkDPfqklb8oZ9FYCOsDdrRfXbt2ONO6UZfds8pGE9rp
9Bml/OsrA1hQIc/RBohwYEXCDkGE3FjKxFXU04KhFJYvre5vn90OSCQiz2Nl//LJRa+W4NqLhXU+
2wvZZFUMGLyKW6UMPX9V63K3DeRmhC/gkB0L4dO4OajsocMgBk2u/NWElVBotM4ezNIFT/etHnwQ
oU8aG0DxrHUMAz0iirWZDF13qeVuGeM+86xI5UYNedCGlWs6nY+Rlt8YfcUHfHMLAU6UosvMazty
QZOX/8OLDottOR6RJnJb8mCftz5sGjFyrn9YCOYxYbADBttp9MEDpCgU9pP3aWmbiiX6q94/jM7e
iAZ/cnfb3JDKvNlgmedXfJ6pkC++gfUaTgfVsGXil6oMBCEc987zK1rgpAaQi3Jsj/OBtKlPm3Ag
p49ThE/XLn3/6Y4jbBu0/lCEhgcAUXrLl7ZpZ4Y+enud5Je9RN9xpl9W7u0FJDkWfBxG3JDCgfSu
bqbwdE1NpJwI4LEttT8UzBIGFeY+rsa9qTytx6yvTUXjIoEyub7XswIVLGPoqD4pO4blZ3U0LVhc
v5DrmtVZpIgB7m3b/KqvBvZQyZ7yAgaJ96168qff5u/WA8MsqXv1mcWtHmtXfI+vht0pQX2dmN/2
Ir61se2S8JGEwKJTVIn/+FVhkTdrrjXOjsvOMl/B7nMpTPLLCEisK0CxSTY1JzD5rKEM4eZp7Xqm
aA/ChRp6HU4REV8nig5hkeebZ2wEie4t/XdlF/6odVqG1cWcdVCGmsVkBEqa/5JnueiZW/Ktb/y/
OT69dq5TuT41RPfLMLZhurWu3DEhlekSG+/LgiI4SAIHeoOSzWWfkCagYtGL1cmVTPO3f65jcs+J
xI51Ufan/xihMaTK/54TTilMPg+cvBFAS1bDDGUX0RidSBoyrmYlfsPO6QBAZF17aIfUITvl7R5C
QSmleIe0+s15gKQHWocLI52O/APVl6WmZktWhi+06r9KNc1EKDrng9oxmbwvDX80axm25y8Vv/mF
x+0K0H777IyYbWZTMOYq1KOsLPXuZ5XkB6qGSixB3aOgBCMgikFZReJPhRLTQZTLz8Vifvf3qzdQ
rITYbdS+EShSZqWStO6wqeE8AlJadKco4Zrxm2n05CLqakU+R8FyZ2eLe52dzZgqTjvze2yISp81
wiXAWB72ENXC1xHh9JhePyMgfJNyyetUKoqW51NXG1MgPevifc8sQ8+xlZB4BhoPjy0htgN0AqfM
Qll4dxwgLH+ky3AiIrdWN2UOOFNRbaULN+U45cX0UW6MGsMuTlIr7PQmDV+ERbK5T6yGpgcK+VEE
9xkgvjoPPSHOgm0rQu9u4hwnWGyTX8YcnENgTd0uUnPk3f0NnvOiAtvfLr0QIYE89VudHQ/t4hLm
FyXa45F5t+axXjdzxIz5FzMGiGm6JolS+D2uoeiAtuQIUdlhw6C+OooC/WJojtR9/GwI61mbG8iR
UXZQxaSITVUdWMrYEbB8o76MOplfJM7Uq1plca5hQy2t957q8lyuSPRVBRaFVQCsPwS46AB1Bkag
HTQDwGeQC0pnPlQN1NhcqA/NZ8Fgebi8BOncMnpoRN1cJ3SkbrQs/0bJ59hxRjr6NlVZHTYuvo3O
urKfoZhT4M9P1Y3sTWBsA7D3tqX/aJWXa5OHAQzq+IDwy8bq/0kkZ0EHsA+8KuPuMQBLVBpCmJ+V
AA4bYN1VG+JOYkvKMrG53rs1/dUBiZbX6xg3mPgpsPBTPVtLgDqZqP6OT3WRni77aTblv7vylkpk
lE0FxzYKSZlHZw8kJaQlJsArIWHuIohAykW8W5Qufu5wz2i1vq8Nz+Yf2i9sIJmL3bOINhjHU+Es
PpcIHnB5hxTQkobAcT9yJJIvrbTb1zdeP65FVrQO3sqrypg2TYhNkzCY9U2WOpxlt6xXC3uV7JuE
YrEaw/izKi/448Xv9qb6ntiCgHsNcATTl1GOOv5Jy06ZVieHHMb2kucHYkUX69bJbyflOshw5Vx5
4stDJYfJkoHZl2gdgGMocD6Dr2PCTNWvm2MY/RoYHT2fyu2VTtSjuBiZcF4f87XhNMpQVYEnuQz0
Jj686OXz89LzWSSH/cflQyDnhpFFjeB3RRKrPWABNGmmiBOw+9Qdb1fBwPcNxsxA1v4K4MFtGfqx
8XwQaCEHwZtzSenLtIFyBCSEXiFFD5qa9FF2EsvU9+GuklUnzcZ7XgS9F3l2x+j6o4l6mVuIjls6
h0oGCCVlyrYvhA8dKMWt3qkIIJsrflD5BB0496f30m+a61XVjVHLsmLBeubG56NHiJXW5dGQvwuq
xK+Z5wScSSk2ninM6ARr5vC8riM3WhUuaMhxj8JsTvEjQpyHh/Yx/XtXhifR3NwAsHJSO2uM5Icy
q3a9anLSY5MrI3jMCCjaBx75leWEtZq6FfLiqTeFodKF5IqE3oRNC6hOWlv3pT553r6C9uECwq0G
ms9LwLBJe4/KbrAppxBJVyuXDrdgqfUYyqEDgAgdJrur+4ypNJ57itzgCFxpXrGEkUHFESeew3QU
3o85DupJZltPtAT+tWu23aOgeC1IB6KOPGMuoXzFgzyEIa6lPLdJkZOzAE65wHwn6O54V9zhD5Z2
Xw7w1OAqSrmMDoy6NzrTjCufw+N4eZla1yiHiK7znrW4/73ZJLLzHFDrQpQ7lIBZEuOjoyYOHczp
qewMTSB40AGrVI28iHIoGLwoDvUewx1ZhAR0rY6c3Y6vgfcMj1KURYzacxzP4Koe2F7WWbAspZ4I
dMPnapYHsnL5gpMqb/6j8MHDU+x3Y6HcQLfc+yJCqdlEbQ4V4MEzwHevEqoNBndXneEsEPGWdw+9
FYhXo4dzNs6mhDnyhjBeFQNFdzpTwR0mC2q35eM8GEwz1VrUuMTezXd+DiO7HtC9HslSLZO7T8WZ
3273FB0xSWR86M1vLQ2JPJA1yaD1utoQpmElulDa0qsatJgfsiqVzNsFh4Qsgq5goT1EadSRHYZ8
pTjwDGf+/yYPjj1+TQPnDgMCTkqIFIACi+sCH9JNOe6JqZnPqIIirT7K2136YXcK7gIVdEt8k3pa
pfkZ0hY35KMkiZpODFAbW/Eauaet40eL/iwKBh8GwW+KzK79jmjIzrcbTPqVfDDUnG+UD7tUTmd2
2O/uejK06s0ioT35HQlT+d3oq0DTQBIOUR+haPc2RCZRQ3Tty6kQhi9HozgGjJV9ox0oC6PQKB6F
3WQfhhLUkD1szXGpvoD33XWt8NJH089Z2GuA2cIS12ZQzuFo+gkflRNGNuUyz1h3ChXp8HG7oGHK
23UuAP/iuSmK1c6Rc55qKtMDPDUqA91KjpyHdGNEfF8Rsn/+vqHIK+0KPCg/K4WHTxJy0WofGFKt
OHaZfPpLoEWQ9yD6zzehgVUyWiG2tDCQ9hSSBOQ+dn/ELCFl+qIglYLxWgXAAs7/8LCZcPhn9RMZ
2W0MW3hG82O56XzIHwDazTErPy5cibexyF3YdjAi7+DnQCgFRJS0PK2ivwD1KF5bYWC6ENWWGfDH
fkxigdVwUmbYAuM0oJFQsgrqvKAmCmW4rv7p5UZ9aXKHkbR9kK4P73lslF8kL2POvXgquE6/JYJ3
Tjvp+KEa4XN3muUouRBpWVvxiq3PZMZf7hvwT6/YnU05D1NxBfp+03lDuRt5yOXG/LEI6g9pLGv9
mZsHn+N3P2Sxl70H4eJslDyirHhhCFsF1WfWl7W9tFYqRiaw8i3lKCNP2JTtzzDmO0uwXKW/xXG8
YZga5biYHP6eK3We3gZ2yqcMWwN3+XL9kGvhVOd/qiLrNo/j7IPLjHjxAAUyqBfmXTDllbOuDMCt
1sRbWSL1kMF17mwXCKDMHSZcxNlbIzg//9SNSG8w1we8U1UT8UtDzhzINpza49L2StncUDUD3wYR
Rc581awxAsr7UpmFSXa04RYtDSBPOSM/Y4kRcaDXRzaDDJZ+TDJLaN3Hm/OpFdkziOTlwrnmvYsW
KyncNgzZIN6GvP2nvW9tgcuI2fedTsrmhr2qGVu3TZBMVOfW2UElgxBpqqLTiF7UaQCi+2nWhXQp
KbXSegyv/PlBwVNOXF0FqyFUG0XgFm4zWUev2ku5LZRV6nt8JZgSfqZAYfdmIs5IvDiwEcuiX23t
YPU3MjkEoKK8K8uZ8iB6wTJU2Px1AMPCGAIyfmLYZHskkr6Hwv5v5tiqw1Ygwt5R9ARGU0vLlwrV
g8X3V65IKOEswgh/ehoLvbUUzkraOLHSqsgvr4JcnGIPbwT0H8W4Jayvbxmd+9oPrzgP5vIikPij
yWkk0XdWDOVTkwiu2w4XXmRc9PztL+YOXgg2I1Y6lWo8APZsZWzvLOxC+qM1g5L8StWGbIgOkgFk
rOgWGLzlG8F7yXB9qUO1sASFJnCbGY8x5ctGTnvF4pZDP6EUfvrC/vqcoXBh6m0bTwbnhA+MNxkJ
kM9srT4qccl8pTdItCfhvS5jJNcwU8UkkVATERuxBhG4sgU5U7T+caOXp/zI4WVtluvh5F36FtRn
7NujrLkWY1vHTMzIyrCbBk8DRf98JWTCYowTfMfyB//98ZlRcUxt2pDNq5v+2UvBhMNWt6+WUV2J
2TDbBUqv/L3F4wUkh4mP3EI1WN+9Ic1V+fa2ToI5tQ4aaCxfi1+EY1FOGDL0hhrEhVFrCL/WcuuB
RSzZZYT0DVuepR6frjqEGbdn+8hMz/ASVXEx2XaXwqu7ev9eebIE1GtIlh9TzQ2KIBTb7NRsPedS
4kwLxct6akRisicTJLEnZvj7qUwJRFE+JL+kaDeFGvmi+TPBQ1K4P4qU0LLEnwBtjizbCjJ2LTM2
7DyQCCMys1DCxhIVvpaKE7JbwPNiWZ2q0a3TYCgl9S/Fe0WIsKrPsllDoUmveQ/TIWy8H7cSqdyU
MpILKPZyZbU+2Ass5odzRUhHP3jKzQCAE9ojFNRzUYWj4sCjm3PUikfsQ15nuFhmoNCJKhpbfq8k
Twk7nFzpiQ26+T6z+5fVv3fcYLG96ChvX4ObQfbIt/GDE6N6P0ngG/j+zx0csZ5R3bgQGc/ioO5g
pp35UmN8Ozib4ebQ2tkm7Zs4ZPXTcFL+H89Wzv2hMkwRVeL22WwXbXusNFyS0d+Vj40qTMsRAzmG
8vhAJHsrpfvOlZXO8AmceD8ke/Wq/mrbO/wdB+ALcItTKNfYEJTXneD1A6KkiJrRVrMghW0QNPUn
NbawDBffeM21+uRHPvLSRWy1i3TH1sLMRK7fQmG2C/3T0y0RUAddE7rqbbgVfL2S43gwGhL5T6WP
P/SFC/bMwVUUJp4mILV5GenKiaPTDeohROebFmitFYCbt0g8gY3YP8ggMcwBp7TEyM9Rbbb4N0XL
G1bPEfA2KmKwx+FHqYAsI7Rzt3PdzKJUdjA5uC/Q3+o/zy3R//M1YNjNfzJoDTMV16higaPFXGn3
9tdQ+7uTzwL3qgiNTdd4MmazfX2xSh65QJz1VB5uRA7udySNpdfJIZvD7Nu5j6O4ABxIF3TZ1NEo
IVSrnHZBm+9TRS4pRNH14hnQsrXDaOc1g0L1FEpYSSaoY/qFJrMMwX1U9OT+3U0keIDH3Kd3FL7m
0hnF8P3AZd5iYTqdanodaw8vpq+e+6PUvIzCQto08YGcvPDOLS0ITaDmpmO2GaFpc8+PjTj1MCIs
w7rSNHsk9btd/aN9PhdWD7OebyD5QmSFPDhyWfdxeRqsTZaXXCjaN9avxkd6ncZwTrmqSL5QrEBL
WEBtup4rzu6Q4AvgKTHeoljgbdcZwwTUyBco1eCIyfPpRbfZjXj2pnd+kjTucLhr42GjcIdcwM1l
upBgbze8PjwC+vgrKDHhTp/nKCmgc/gbweGdfxIJA18/Tpn74o1RBRABdak0NPbuhK7Q5YortV4M
QthuIbw2u8/ggQeY97dVd0fLOR6E6AFiwKk5n+nbW0k87cqjUhzLyaPEWGlUJrz6rBOgZ8BAP00r
pTYdpm27Sg5NWlO+waA3Ywrom5RKyZGrp9AsiYq26bmsyk1AJJrDzn8H90xjcrctDQyolGFd/78j
olg8xRn01TiTa5n9m1bI0fuhqXT1MYU6LkYq9DmlzilHjpk3oYzAYp88Rl0hkHReora8goM1hcYo
RxBKiD59zuQeJONp3g1+8GSe7P0H2q2lyLSUvH07SK3OlWEIn4mPjpZuJO1WQGwPA2WBD6NBVZg8
Fn0D2t4McQiVfFmRd7X1jXOhnbk3uiOkeqiTxWCebNJNr01zVzBNl6KqRLBmGh2DNJlqytVPnsx6
Jh9qMGoUlFFcYMT6kkoZ8gT0piedeU0MAmiTwOASQHOo0stmBhzBLUwJKgM5TrP4PZIYk2TI8OUl
m+voUEVqURCUlpuYCr9BS/lWZCsV7g/oFFoVvX8osbhNBt97hBcMlJKgfugYEbCsqUfdZ2oPP7e9
Ae1cjGH1qbPkyH42yB2887i5RWkXkWVpiVY2Yf8khuS6ZHF9YyhCtee8Iftok4nnY4WF6RG4pHEZ
nMxp2C1oWUvzZsFcV590bqVLR6eb2xakswzebMiCMCp1ubZ+SYjXSxD1P6jOB6f09GxWT/UcGbNE
/APmpKoBSJN4liUneMUf6ZfIiSIxNL9c23Un2y4MDJuYTX4NRDqCVbyIPYGFj8zqkjmeLW7n9/rH
yxcODEidNIOK2Hy+E2fC8djd9ObdPUit1m4DqymCJrXIbAeYFJ0PLJhhFA6TMhS/S0h+7/6HM4L4
brFdVU4D8v/LaWA7AXNiCISBR8GrVAd5D5tCMJyQ5U8wER6qOt0ngagQ16AznbFTh0dOU30AtC2g
RH2v6sE3/Ux7chuuB+7bQnU/m+IljGDssC0QC31lbRu3acnLTp0q8X0cuOxI/j8n/cKFZ2HDmsZa
Xj5BgiGS2R3tylrNs/laoCW44R2XGUiwZzEZXvIwAXehEeWThdAYWwvqpvqvQpK6Ass6PQ87Sxzu
q9QSW8QtcRMOb9euSn/Wb2ylp3bzSVsujiT4Xe/zeCB98iyIKG7+AwzWo+3ba8FcrNEACi3m2AgA
CWKTPltzcy3+9JQ3maxvuxw7ICy/BRHDIF2vjHeNi/72MVgK7b5YIjjUnS1Q65Wx+6bnEQAMe8gt
/5p0nr75tuJdklQcK8CBCMrpHxggbwULCJxzOax9Ztc0oLl3IMPJxPP4krekGSkwC5+QX2tKGeyF
T4eYXiWJxNEcBmzpEnLKtlYTZtTJ0OYNW9i3IpZTkgjKtOO6ldjzp19qzYjYlFo5b6Yx6+oM9/ai
3g9iW/cw4ygXhz2F0DAuEM6Yr8A8trZEMWRGIsZ5ZMwSnj8OvbXoudB6YJLqn9KlgeSUt/5Houqy
ME3jQ2j96K7aknrxiCjW4iZ2pnXMia8It4YfDUJ+lhSrk4Yx128Y7F13zNCXNb2ybBfEL0XjVNLu
70hGgIOAxJL3d3DMZOO2w8BrWYeXxIsspNg8EYDWZsLUAbrhCsEuY0Ur73a66jR5fAVzITWXx3g4
xflP11rEZ52VU5TkJ6Kbmgf/wMt8jbOdUZgrB8Q4p89Q9iaLdMBQGqL5Du4BaWhI0+6bxuvB2Ax4
NaTXmBm06ADz4M5BM9kDvjHrDSppPsQGjd3Mrt8BL35OYcv7npL8Niaoh93pMlH1mS44yZUoZs9l
ph5KTZHX9WFAM4x0zAg5LZ5xmW9nfks2qNMpvdgT1eY7o3Pr5+tpld6riRx8Zdn/Ewtz4solz8eJ
lFfMYVvqulmYb4FHS1Z0XFZbKR8oB37plFfvEn63YUBM2JnutPlQOtqgS9wtf/RShfZrAbI0Lr25
ChAaeiUDwg2jJCzTLulMu+WPBW4J24TUbSMvhHVXiC3LOHyIwQHsjmSYm+ms/WaV/0lkiU6DybwW
tL6T1hASf4pWvOGGA50hC3MQINPL2xS4g4KNdtzMKmJyJH8k7wt/3a0cezp8293aDk6eDZqnGPp6
pH5SlQNu+am/tHfHzwpieZrEMQZgKutn4i3voqcYANHBqeos+s8BPn/eXBRHwsyKqgGfUaTKBcVy
GLbuMtIs+JOLJx8eupnObYcSQDegt0zfqiXOLeF97VyvOr5l66DNQDZ6ZTxcweHR4GMwgwpfIs8g
icpo0056DEWiItiEztUiQkTIJQskewWhqUmnmC6/zCQORZVnv7kIiX2XD/lo3yqME3/IsuNJ27c+
PjGB3/NBx+y0gEWUZxDFKDonOeLJRTIC6sbICUF+T+rEqWYXK9ycKgqOeNR5At2mIbQFFMv0vCoM
hSehs3Yh0gJJ1YHwxEtjAOj/ExjMPWvrOtFrhr5HvWwxcqOStb3Rk30gDNcEpzwjmuztZRPRtd4N
FIEA7cjXye3uaDMczlkd84xL2D+rBLjPI6hDgufDFHukFA8/gnVs+m2/wJRPphbpLSjjBugFCYRT
VyskIAgoFJp3xPPZT9iG91joItDRV6fL3Um/LhhNZPz6d6W4Wwys1+YZ9wCepZXDWmwk0XoJPF01
PzV8bcPaBj6HRzm3hV8oMIo1AYKZEnc0VYUsVH4wwI5h8CzT/CIl8z5+Ym4GKZKQGUhPtzW/jZmB
iwG+AckYtw8qizz7edShB4LgBOaTarYx/vNv7ODu/3K0Oua/Xaz1cVRmQoC9ZKc7jbJ0L3COqBhg
dLacfilBoXyzYki4KI2jvcx0whx/t+zuqq+hznBOd42nKRXg2Nn9pcR5pBVBtPfdDavsyp7OfCOC
OFkqvMYPpX290qMbtGty1vsryV2yDaVtVFYJOuTULWldYR86qxI8PJoROFYqWV8DZ2IfJC0nIfCk
zPMeHC4hzQMQErqctwEl2H48TCq9wk6Zivs1GsU2BHpNR6RLmSL1CDIsHRJ11Ak2ymcIehLKy87V
J/SoGaL7opksne0u8g3QB9GmLPEydLiTC8EQ+nfO3veuivvP7u0iV7inzUm4phDvcoxS1fqZcCzs
C4eCG7dt0Z7Ndg5s2F1m4hrKDXyt/9mfuOjXQ/knvc5wPM0wSSXdMnoARKjnj7GitgQqEAXnKqII
xXw4WdLoG41Bcy6CiugZUZOZFgh1W1s014wwlXBenIR2B14rbIiy7DP/xv7qP7VhbOMDz1nW1iT4
TH5eDdBHy293VfyGqAZUoaUlezsuR3OCmsJRwkLEQZka3C/ArZgLoiDpitf3OAiQtGdixZ12hiFK
aplkV2DtL8CTdamSy+NQE2/ae1gRVSp1cgvCWZOnVpKsAG1IhfOOVOQzLCwXlR1ah9gSizZx7r0i
jx6VBSNBKhlXxHYPfh/C18udAyPYhO5yGxuQ9l+i9X9ZPvQAMnUD3It+vIkOFWCdQ5isz7EBcwZZ
CX2rNwp/J/UpnaZ4gu5vmNyoGUdL0ds/ASpIgmhv4k6kfQJ7g4SqsGou+3cSo/QgGlAWRgEsqlpc
5jnPiSglPEotVkcs8bVkxCHB0y2hI7vpwlQcyZ/hjO2m/NBVqQIjbfXCfoPw6JDDEOHoqBzIM1+B
WP8MI4lL0q5nqCrqmNkfF0QaLpoeTOmG/o17DVwIIXIL9mpW3/mX0U5REEansPiDxIDUDK1B3fjo
Ce4WCqAQCH0ulr7IAWUIoKB3i3ts8SCC9VaHaIu/do90blPISvsgKDThnk9PVxCaYTQ+h1VkoxSu
CbEY1x2lXFCZ+iqabFXBqZOCRWSh9vADJruDYh5HlZUtWlUpLOFpV0biuHYJVSi+r324zGL74ZMS
A8ZhjEdxUlU2ljQPHjyS3UhYq/lOJNF+0/T1XxCVeE2tMqU0NPhW+mXRKEC2D8PkJXO0Eyys4j2b
ipF+z81/oWFDWC3smntIsrp4564622uWB4EXHWdVojakcx4rk2M0xGAY7avziRb9tcgrPFaaQsKh
u5d2ltRpPdWdoiwmdbhgdDdg71mTUcRyW30dR7335WSYVTWn957NEXtd2Qj3n6h0VrEEP0HD3JYS
qsJBNZ9SJpsDfv8LxtJ1Klmz5IWNYwwtuY/amW87aITcLFOeO/RQR4AZZWnEDBRAl62GUUskmxZn
BDPr6fYAScyU9v1s7LQaBNPzB2XMnwdJ0pPzXdn80FpzImqejsNSa4ESIKVPWlwwZyRx1Y/yjtSF
h1x7fidLa3HsdmpXzTlvjETK990J34kvL/xVsh4NfTbvzKyGbSVZVi1eLJVFRLWrKY6bdGD4yGb+
vUnoFMkIKdjRvdr5yeyxeki709LnNwcYkD+6XOj1+NqtQUKjMYnJon7bNxx4nctJ5xHnaQlYrsi+
BRgFAEsyEwRP+vIA1wVnBpHKrBWhsABPSuuscdYw6EvBhygjbK1FIdFLpBZ0+huojJ884Rw4fSaO
cEMqX+Ah2HklFEnOhKpM0mpflFGyMqidwScFO6LaghmcVK4z1SSe0ro+QtXyPOwBZAsE9EtmmeNz
BoPu2mP9wFgPYf56rwXlw6e+85kRq/c0M11MwxBHsOZv2S3/UKuWSYi17GKb3fF8J6pMBdJUgplp
MHAE3chSfkudwxN/om+MkMUkalmNwYVuhsyNbZBrXGcW+N7AEWrSL2L1gdxcEh796zKpimA8t6ue
WLV5lHBUeLf0+2pNRs6s8/PRFZ/bDIVLTDT3ZIAm4Iyj5pFatPdV3D9ZWzpnq6WYx8YLy05gB8FJ
FI31mRtEAD1crZIeyIrK4EDA+5nqyHZ/3+k2IO9cd3OWVbS7iWt5zCXpLzKLsSwmvIQMy6eQuwvQ
Cw6j2TKFDd1QnQNJf3j9Sg0Yme7KUDfSg2yomSpuYZUWOD81huViQr1LnTasknNXaUdhrfiefg3S
ujYnCpp69tccALWAwWVYfjYBjgPuUW9dB2xHCE0sm7Ymk/pmduPZQIlHUrBHj07LIU3lalvBP+oC
PA/SYfzPWCzoMBqBgWy/gc4uXTQu854+yJcKYu8lkZfPM5QKd17gOSHe8r/zIaHkKBkCsjOYGyN2
cO2eXwMgNT+LlSsXLQFf2nqDjoHCjEiC/PCPNj9gw8qgjcFRvSsKemX4pFuwuJx3DSbESX/WPupi
a0HY8vZKzyQhQ5VXHCg0z5IWvRx6RNw0G9Ras67G2QMu3P/voEy6v9WaBODg/6FxSUDc4K/XbAJc
5p8DlZR0blCea9ByJtU1sKSurVugDypfsFpTdjHRJ8s/ahW5XZhuD4UasmIhmgntkiB8MjBVkl2c
K5Y/wV1BNhCAjSuAGPcbnLKaJa96VvRs+xgHLdkRWMFlwva4j8ve/DeieDF+FbV4FCXc/1b9Uftn
pr9S1fIKQfyPUXLOnyzXPHu4K0Eu128CbSKMwZj3ECT+hWLaKRHXwEJJ4DIkap2vSiGWXYCFAfx+
dXVlnpBcpAD+2bV/k4RjWOPBjlEPLurbRRYOLF6aELYw/ns+WGDh7Yzyv0p92tFz7hnDsEuwggY/
LQCojOuKMctJPvxhMVq1pe0CO+7Mt1Decvv7UKZE8mqrFU0hl8nXmlpERzdU69dvOBrSulpdfnw6
pE7B8Zj7OY96Hn3jMNZp/X/9NP1Za1P0Sx2X4cbedzy0CANNQFUP1L5KiKTw+zylrYOYZI7YXNUj
Ue5szbWT2ZUvNsw5IG9GKhWyh3nCw06HdFozgLVLojw8UF4UYrZHZJnwLVO+9M7yzB4UoXTQKURR
wH8DGyX0NE0lHgu4fdy9Qq/YozL960YwwGQ8Lx3WXWEwT22SZnv7DZdDDkQasFQo5nE30DfaGl79
rpyGc78W9recCEaD39YsOoq6XmuUGmDEndgOb9COrsmSxa90uWIm3qrHrkSMz7rMrFNL7jWQyicF
dHgCT5YsxfvcguLFTFsQ4YL3HdlCny2u+mKjnz6aIBAN/BD+XhzDo7ALMg4egt+Y5YMmQx5csn7m
J2ROwW/aXyAxK9DHXxZI0NrUKSE5CfrdItAHr4HXOMTPEuITFv+As0a+XAl6dEoESf/lIw5UBuKI
zVht373sW3Cdvc+0giSmapRrb2Sz1Q/U6+Bb9eW4ssDoLlDVcnbNlbbmldDPzCIb/0paqZnKeJdn
9FDr74AQXyfTl0DEv4u2y6EOQpZ7Hlc0qeI+830As9qvArSXyweL7ewxXXaBiIXqtZEgGPiqNzfE
kanAqWTnWQ0uWPhd65PUkbbdgwm08/Bsehk0s4YCSaBz3kS2KWNmUZhjhXduqKhRhyq9Ux31X/64
xKCQQv+9zZN5pwZx+VgX9sy11ukVvJqxku/XcxUjx4cA2VmO/mxwOdCw76BoB1zSeM7ik6h8QjMX
WgcuvGw4Phdr4w93K6gMICCCIJj+WUfumervqW+v17rpyIQNi0rhscutrWfAheCRYExdY4NPe0OQ
5rrbajdZ+TAIOKqrUB5PznmhkW7KtvxXVl8+ZpP38jQDDiIc9xGjQ3tJe2PFr9O9mP9rjIN9VZy7
jHe9nTlc72EY+LiITRLjTF/Dmgfxva+FMqsN38xgH7zsNQ6F/w+gJlDLTAjCdxnW96WxrYeti9N2
AFj1KZDOq+cXkKLxaWYPB3EDzh4Ss3YVOrFwo5tjIbfl8IJnAvJtFh7+AGyBwTv77VioJbA3zqQy
3w92o9uSLPOJRrUrHGJpy2fH73xPYWKFuCF7HDwa6TIUp1jqh3/bjQ==
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
