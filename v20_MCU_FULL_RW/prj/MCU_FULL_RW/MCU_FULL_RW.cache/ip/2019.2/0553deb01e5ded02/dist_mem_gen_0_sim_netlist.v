// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Jun 17 02:05:43 2025
// Host        : FB47 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dist_mem_gen_0_sim_netlist.v
// Design      : dist_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_0,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (a,
    spo);
  input [7:0]a;
  output [31:0]spo;

  wire [7:0]a;
  wire [31:0]spo;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;

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
  (* c_addr_width = "8" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "176" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "dist_mem_gen_0.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[31:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .spo(spo),
        .we(1'b0));
endmodule

(* C_ADDR_WIDTH = "8" *) (* C_DEFAULT_DATA = "0" *) (* C_DEPTH = "176" *) 
(* C_ELABORATION_DIR = "./" *) (* C_FAMILY = "artix7" *) (* C_HAS_CLK = "0" *) 
(* C_HAS_D = "0" *) (* C_HAS_DPO = "0" *) (* C_HAS_DPRA = "0" *) 
(* C_HAS_I_CE = "0" *) (* C_HAS_QDPO = "0" *) (* C_HAS_QDPO_CE = "0" *) 
(* C_HAS_QDPO_CLK = "0" *) (* C_HAS_QDPO_RST = "0" *) (* C_HAS_QDPO_SRST = "0" *) 
(* C_HAS_QSPO = "0" *) (* C_HAS_QSPO_CE = "0" *) (* C_HAS_QSPO_RST = "0" *) 
(* C_HAS_QSPO_SRST = "0" *) (* C_HAS_SPO = "1" *) (* C_HAS_WE = "0" *) 
(* C_MEM_INIT_FILE = "dist_mem_gen_0.mif" *) (* C_MEM_TYPE = "0" *) (* C_PARSER_TYPE = "1" *) 
(* C_PIPELINE_STAGES = "0" *) (* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) 
(* C_READ_MIF = "1" *) (* C_REG_A_D_INPUTS = "0" *) (* C_REG_DPRA_INPUT = "0" *) 
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "32" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13
   (a,
    d,
    dpra,
    clk,
    we,
    i_ce,
    qspo_ce,
    qdpo_ce,
    qdpo_clk,
    qspo_rst,
    qdpo_rst,
    qspo_srst,
    qdpo_srst,
    spo,
    dpo,
    qspo,
    qdpo);
  input [7:0]a;
  input [31:0]d;
  input [7:0]dpra;
  input clk;
  input we;
  input i_ce;
  input qspo_ce;
  input qdpo_ce;
  input qdpo_clk;
  input qspo_rst;
  input qdpo_rst;
  input qspo_srst;
  input qdpo_srst;
  output [31:0]spo;
  output [31:0]dpo;
  output [31:0]qspo;
  output [31:0]qdpo;

  wire \<const0> ;
  wire [7:0]a;
  wire [29:0]\^spo ;

  assign dpo[31] = \<const0> ;
  assign dpo[30] = \<const0> ;
  assign dpo[29] = \<const0> ;
  assign dpo[28] = \<const0> ;
  assign dpo[27] = \<const0> ;
  assign dpo[26] = \<const0> ;
  assign dpo[25] = \<const0> ;
  assign dpo[24] = \<const0> ;
  assign dpo[23] = \<const0> ;
  assign dpo[22] = \<const0> ;
  assign dpo[21] = \<const0> ;
  assign dpo[20] = \<const0> ;
  assign dpo[19] = \<const0> ;
  assign dpo[18] = \<const0> ;
  assign dpo[17] = \<const0> ;
  assign dpo[16] = \<const0> ;
  assign dpo[15] = \<const0> ;
  assign dpo[14] = \<const0> ;
  assign dpo[13] = \<const0> ;
  assign dpo[12] = \<const0> ;
  assign dpo[11] = \<const0> ;
  assign dpo[10] = \<const0> ;
  assign dpo[9] = \<const0> ;
  assign dpo[8] = \<const0> ;
  assign dpo[7] = \<const0> ;
  assign dpo[6] = \<const0> ;
  assign dpo[5] = \<const0> ;
  assign dpo[4] = \<const0> ;
  assign dpo[3] = \<const0> ;
  assign dpo[2] = \<const0> ;
  assign dpo[1] = \<const0> ;
  assign dpo[0] = \<const0> ;
  assign qdpo[31] = \<const0> ;
  assign qdpo[30] = \<const0> ;
  assign qdpo[29] = \<const0> ;
  assign qdpo[28] = \<const0> ;
  assign qdpo[27] = \<const0> ;
  assign qdpo[26] = \<const0> ;
  assign qdpo[25] = \<const0> ;
  assign qdpo[24] = \<const0> ;
  assign qdpo[23] = \<const0> ;
  assign qdpo[22] = \<const0> ;
  assign qdpo[21] = \<const0> ;
  assign qdpo[20] = \<const0> ;
  assign qdpo[19] = \<const0> ;
  assign qdpo[18] = \<const0> ;
  assign qdpo[17] = \<const0> ;
  assign qdpo[16] = \<const0> ;
  assign qdpo[15] = \<const0> ;
  assign qdpo[14] = \<const0> ;
  assign qdpo[13] = \<const0> ;
  assign qdpo[12] = \<const0> ;
  assign qdpo[11] = \<const0> ;
  assign qdpo[10] = \<const0> ;
  assign qdpo[9] = \<const0> ;
  assign qdpo[8] = \<const0> ;
  assign qdpo[7] = \<const0> ;
  assign qdpo[6] = \<const0> ;
  assign qdpo[5] = \<const0> ;
  assign qdpo[4] = \<const0> ;
  assign qdpo[3] = \<const0> ;
  assign qdpo[2] = \<const0> ;
  assign qdpo[1] = \<const0> ;
  assign qdpo[0] = \<const0> ;
  assign qspo[31] = \<const0> ;
  assign qspo[30] = \<const0> ;
  assign qspo[29] = \<const0> ;
  assign qspo[28] = \<const0> ;
  assign qspo[27] = \<const0> ;
  assign qspo[26] = \<const0> ;
  assign qspo[25] = \<const0> ;
  assign qspo[24] = \<const0> ;
  assign qspo[23] = \<const0> ;
  assign qspo[22] = \<const0> ;
  assign qspo[21] = \<const0> ;
  assign qspo[20] = \<const0> ;
  assign qspo[19] = \<const0> ;
  assign qspo[18] = \<const0> ;
  assign qspo[17] = \<const0> ;
  assign qspo[16] = \<const0> ;
  assign qspo[15] = \<const0> ;
  assign qspo[14] = \<const0> ;
  assign qspo[13] = \<const0> ;
  assign qspo[12] = \<const0> ;
  assign qspo[11] = \<const0> ;
  assign qspo[10] = \<const0> ;
  assign qspo[9] = \<const0> ;
  assign qspo[8] = \<const0> ;
  assign qspo[7] = \<const0> ;
  assign qspo[6] = \<const0> ;
  assign qspo[5] = \<const0> ;
  assign qspo[4] = \<const0> ;
  assign qspo[3] = \<const0> ;
  assign qspo[2] = \<const0> ;
  assign qspo[1] = \<const0> ;
  assign qspo[0] = \<const0> ;
  assign spo[31] = \^spo [29];
  assign spo[30] = \^spo [29];
  assign spo[29] = \^spo [29];
  assign spo[28] = \<const0> ;
  assign spo[27] = \<const0> ;
  assign spo[26] = \^spo [26];
  assign spo[25] = \^spo [10];
  assign spo[24:22] = \^spo [24:22];
  assign spo[21] = \^spo [9];
  assign spo[20:0] = \^spo [20:0];
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13_synth \synth_options.dist_mem_inst 
       (.a(a),
        .spo({\^spo [29],\^spo [26],\^spo [10],\^spo [24:22],\^spo [9],\^spo [20:11],\^spo [8:0]}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13_synth
   (spo,
    a);
  output [25:0]spo;
  input [7:0]a;

  wire [7:0]a;
  wire [25:0]spo;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rom \gen_rom.rom_inst 
       (.a(a),
        .spo(spo));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rom
   (spo,
    a);
  output [25:0]spo;
  input [7:0]a;

  wire [7:0]a;
  wire [25:0]spo;
  wire \spo[0]_INST_0_i_1_n_0 ;
  wire \spo[0]_INST_0_i_2_n_0 ;
  wire \spo[11]_INST_0_i_1_n_0 ;
  wire \spo[12]_INST_0_i_1_n_0 ;
  wire \spo[12]_INST_0_i_2_n_0 ;
  wire \spo[12]_INST_0_i_3_n_0 ;
  wire \spo[13]_INST_0_i_1_n_0 ;
  wire \spo[13]_INST_0_i_2_n_0 ;
  wire \spo[13]_INST_0_i_3_n_0 ;
  wire \spo[14]_INST_0_i_1_n_0 ;
  wire \spo[14]_INST_0_i_2_n_0 ;
  wire \spo[14]_INST_0_i_3_n_0 ;
  wire \spo[15]_INST_0_i_1_n_0 ;
  wire \spo[15]_INST_0_i_2_n_0 ;
  wire \spo[15]_INST_0_i_3_n_0 ;
  wire \spo[16]_INST_0_i_1_n_0 ;
  wire \spo[16]_INST_0_i_2_n_0 ;
  wire \spo[17]_INST_0_i_1_n_0 ;
  wire \spo[17]_INST_0_i_2_n_0 ;
  wire \spo[17]_INST_0_i_3_n_0 ;
  wire \spo[18]_INST_0_i_1_n_0 ;
  wire \spo[18]_INST_0_i_2_n_0 ;
  wire \spo[18]_INST_0_i_3_n_0 ;
  wire \spo[19]_INST_0_i_1_n_0 ;
  wire \spo[19]_INST_0_i_2_n_0 ;
  wire \spo[19]_INST_0_i_3_n_0 ;
  wire \spo[1]_INST_0_i_1_n_0 ;
  wire \spo[1]_INST_0_i_2_n_0 ;
  wire \spo[1]_INST_0_i_3_n_0 ;
  wire \spo[20]_INST_0_i_1_n_0 ;
  wire \spo[20]_INST_0_i_2_n_0 ;
  wire \spo[20]_INST_0_i_3_n_0 ;
  wire \spo[22]_INST_0_i_1_n_0 ;
  wire \spo[22]_INST_0_i_2_n_0 ;
  wire \spo[22]_INST_0_i_3_n_0 ;
  wire \spo[23]_INST_0_i_1_n_0 ;
  wire \spo[23]_INST_0_i_2_n_0 ;
  wire \spo[23]_INST_0_i_3_n_0 ;
  wire \spo[24]_INST_0_i_1_n_0 ;
  wire \spo[24]_INST_0_i_2_n_0 ;
  wire \spo[26]_INST_0_i_1_n_0 ;
  wire \spo[26]_INST_0_i_2_n_0 ;
  wire \spo[26]_INST_0_i_3_n_0 ;
  wire \spo[29]_INST_0_i_1_n_0 ;
  wire \spo[2]_INST_0_i_1_n_0 ;
  wire \spo[2]_INST_0_i_2_n_0 ;
  wire \spo[2]_INST_0_i_3_n_0 ;
  wire \spo[3]_INST_0_i_1_n_0 ;
  wire \spo[3]_INST_0_i_2_n_0 ;
  wire \spo[3]_INST_0_i_3_n_0 ;
  wire \spo[4]_INST_0_i_1_n_0 ;
  wire \spo[4]_INST_0_i_2_n_0 ;
  wire \spo[4]_INST_0_i_3_n_0 ;
  wire \spo[5]_INST_0_i_1_n_0 ;
  wire \spo[5]_INST_0_i_2_n_0 ;
  wire \spo[5]_INST_0_i_3_n_0 ;
  wire \spo[6]_INST_0_i_1_n_0 ;
  wire \spo[6]_INST_0_i_2_n_0 ;
  wire \spo[7]_INST_0_i_1_n_0 ;
  wire \spo[7]_INST_0_i_2_n_0 ;
  wire \spo[8]_INST_0_i_1_n_0 ;
  wire \spo[9]_INST_0_i_1_n_0 ;
  wire \spo[9]_INST_0_i_2_n_0 ;

  LUT4 #(
    .INIT(16'hB888)) 
    \spo[0]_INST_0 
       (.I0(\spo[0]_INST_0_i_1_n_0 ),
        .I1(a[7]),
        .I2(\spo[0]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .O(spo[0]));
  LUT6 #(
    .INIT(64'h0000000001000410)) 
    \spo[0]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[6]),
        .O(\spo[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0408004000083044)) 
    \spo[0]_INST_0_i_2 
       (.I0(a[0]),
        .I1(a[5]),
        .I2(a[2]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[0]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \spo[10]_INST_0 
       (.I0(a[6]),
        .I1(\spo[29]_INST_0_i_1_n_0 ),
        .I2(a[5]),
        .I3(a[7]),
        .O(spo[23]));
  LUT6 #(
    .INIT(64'h4044400020002000)) 
    \spo[11]_INST_0 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(\spo[19]_INST_0_i_1_n_0 ),
        .I3(a[0]),
        .I4(\spo[11]_INST_0_i_1_n_0 ),
        .I5(a[6]),
        .O(spo[9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \spo[11]_INST_0_i_1 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[4]),
        .O(\spo[11]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[12]_INST_0 
       (.I0(\spo[12]_INST_0_i_1_n_0 ),
        .I1(a[7]),
        .I2(\spo[12]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[12]_INST_0_i_3_n_0 ),
        .O(spo[10]));
  LUT6 #(
    .INIT(64'h00000000B4A00E5E)) 
    \spo[12]_INST_0_i_1 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9833DCA612F29715)) 
    \spo[12]_INST_0_i_2 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[12]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3F7B333312312312)) 
    \spo[12]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[12]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[13]_INST_0 
       (.I0(\spo[13]_INST_0_i_1_n_0 ),
        .I1(a[7]),
        .I2(\spo[13]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[13]_INST_0_i_3_n_0 ),
        .O(spo[11]));
  LUT6 #(
    .INIT(64'h00000000E1B57674)) 
    \spo[13]_INST_0_i_1 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hD901C6FABAC59BCD)) 
    \spo[13]_INST_0_i_2 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[1]),
        .O(\spo[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h906363C321369696)) 
    \spo[13]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[13]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[14]_INST_0 
       (.I0(\spo[14]_INST_0_i_1_n_0 ),
        .I1(a[7]),
        .I2(\spo[14]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[14]_INST_0_i_3_n_0 ),
        .O(spo[12]));
  LUT6 #(
    .INIT(64'h1105000400050113)) 
    \spo[14]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h330E11C905CE7224)) 
    \spo[14]_INST_0_i_2 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[14]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEC6C0080D6BD0942)) 
    \spo[14]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[14]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[15]_INST_0 
       (.I0(\spo[15]_INST_0_i_1_n_0 ),
        .I1(a[7]),
        .I2(\spo[15]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[15]_INST_0_i_3_n_0 ),
        .O(spo[13]));
  LUT6 #(
    .INIT(64'h5511554410405013)) 
    \spo[15]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAEA707126080470)) 
    \spo[15]_INST_0_i_2 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[2]),
        .O(\spo[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h037392178CA44808)) 
    \spo[15]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[2]),
        .O(\spo[15]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[16]_INST_0 
       (.I0(\spo[26]_INST_0_i_1_n_0 ),
        .I1(a[7]),
        .I2(\spo[16]_INST_0_i_1_n_0 ),
        .I3(a[6]),
        .I4(\spo[16]_INST_0_i_2_n_0 ),
        .O(spo[14]));
  LUT6 #(
    .INIT(64'hB73FF7BFB70FF7BB)) 
    \spo[16]_INST_0_i_1 
       (.I0(a[0]),
        .I1(a[5]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[16]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h38DFFFFF)) 
    \spo[16]_INST_0_i_2 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[2]),
        .O(\spo[16]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[17]_INST_0 
       (.I0(\spo[17]_INST_0_i_1_n_0 ),
        .I1(a[7]),
        .I2(\spo[17]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[17]_INST_0_i_3_n_0 ),
        .O(spo[15]));
  LUT6 #(
    .INIT(64'h0000000058508202)) 
    \spo[17]_INST_0_i_1 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[17]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4833C08034048080)) 
    \spo[17]_INST_0_i_2 
       (.I0(a[0]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[17]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h80004080)) 
    \spo[17]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[4]),
        .O(\spo[17]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[18]_INST_0 
       (.I0(\spo[18]_INST_0_i_1_n_0 ),
        .I1(a[7]),
        .I2(\spo[18]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[18]_INST_0_i_3_n_0 ),
        .O(spo[16]));
  LUT6 #(
    .INIT(64'h0000000004004000)) 
    \spo[18]_INST_0_i_1 
       (.I0(a[4]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[18]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000074800000)) 
    \spo[18]_INST_0_i_2 
       (.I0(a[0]),
        .I1(a[5]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[3]),
        .I5(a[4]),
        .O(\spo[18]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h08000012)) 
    \spo[18]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[4]),
        .O(\spo[18]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \spo[19]_INST_0 
       (.I0(a[5]),
        .I1(\spo[19]_INST_0_i_1_n_0 ),
        .I2(a[7]),
        .I3(\spo[19]_INST_0_i_2_n_0 ),
        .I4(a[6]),
        .I5(\spo[19]_INST_0_i_3_n_0 ),
        .O(spo[17]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \spo[19]_INST_0_i_1 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[2]),
        .O(\spo[19]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h400F000040000000)) 
    \spo[19]_INST_0_i_2 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[5]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[4]),
        .O(\spo[19]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00800048)) 
    \spo[19]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[1]),
        .I4(a[4]),
        .O(\spo[19]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[1]_INST_0 
       (.I0(\spo[1]_INST_0_i_1_n_0 ),
        .I1(a[7]),
        .I2(\spo[1]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[1]_INST_0_i_3_n_0 ),
        .O(spo[1]));
  LUT6 #(
    .INIT(64'h5544104455115513)) 
    \spo[1]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[1]),
        .O(\spo[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEA45EFEA8CDC7624)) 
    \spo[1]_INST_0_i_2 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h58FDAD0DE5EFEA4A)) 
    \spo[1]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h45405D5D45400808)) 
    \spo[20]_INST_0 
       (.I0(a[7]),
        .I1(\spo[20]_INST_0_i_1_n_0 ),
        .I2(a[5]),
        .I3(\spo[20]_INST_0_i_2_n_0 ),
        .I4(a[6]),
        .I5(\spo[20]_INST_0_i_3_n_0 ),
        .O(spo[18]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h201E)) 
    \spo[20]_INST_0_i_1 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[2]),
        .O(\spo[20]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0434)) 
    \spo[20]_INST_0_i_2 
       (.I0(a[1]),
        .I1(a[4]),
        .I2(a[3]),
        .I3(a[2]),
        .O(\spo[20]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0D4C0B19)) 
    \spo[20]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[3]),
        .O(\spo[20]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[22]_INST_0 
       (.I0(\spo[22]_INST_0_i_1_n_0 ),
        .I1(a[7]),
        .I2(\spo[22]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[22]_INST_0_i_3_n_0 ),
        .O(spo[20]));
  LUT6 #(
    .INIT(64'h0000000008205004)) 
    \spo[22]_INST_0_i_1 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[22]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1140004088802020)) 
    \spo[22]_INST_0_i_2 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[22]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEA005E1200000000)) 
    \spo[22]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[22]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[23]_INST_0 
       (.I0(\spo[23]_INST_0_i_1_n_0 ),
        .I1(a[7]),
        .I2(\spo[23]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[23]_INST_0_i_3_n_0 ),
        .O(spo[21]));
  LUT6 #(
    .INIT(64'h5155151545540557)) 
    \spo[23]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[4]),
        .O(\spo[23]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDA9FFFBF5F7FF7F7)) 
    \spo[23]_INST_0_i_2 
       (.I0(a[5]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[0]),
        .O(\spo[23]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h15FF89F9FFFFFFFF)) 
    \spo[23]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[2]),
        .I4(a[4]),
        .I5(a[0]),
        .O(\spo[23]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[24]_INST_0 
       (.I0(\spo[24]_INST_0_i_1_n_0 ),
        .I1(a[7]),
        .I2(\spo[24]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[26]_INST_0_i_3_n_0 ),
        .O(spo[22]));
  LUT6 #(
    .INIT(64'h3000330303333037)) 
    \spo[24]_INST_0_i_1 
       (.I0(a[4]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[1]),
        .O(\spo[24]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB784CBFB3F3F4F7F)) 
    \spo[24]_INST_0_i_2 
       (.I0(a[0]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[3]),
        .I5(a[2]),
        .O(\spo[24]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[26]_INST_0 
       (.I0(\spo[26]_INST_0_i_1_n_0 ),
        .I1(a[7]),
        .I2(\spo[26]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[26]_INST_0_i_3_n_0 ),
        .O(spo[24]));
  LUT6 #(
    .INIT(64'h3000330300333037)) 
    \spo[26]_INST_0_i_1 
       (.I0(a[4]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[1]),
        .O(\spo[26]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB380CBFB3F3F4F7B)) 
    \spo[26]_INST_0_i_2 
       (.I0(a[0]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[3]),
        .I5(a[2]),
        .O(\spo[26]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h2F6E4F5D)) 
    \spo[26]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[4]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[3]),
        .O(\spo[26]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h45FF)) 
    \spo[29]_INST_0 
       (.I0(a[6]),
        .I1(\spo[29]_INST_0_i_1_n_0 ),
        .I2(a[5]),
        .I3(a[7]),
        .O(spo[25]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \spo[29]_INST_0_i_1 
       (.I0(a[4]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[2]),
        .I4(a[0]),
        .O(\spo[29]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[2]_INST_0 
       (.I0(\spo[2]_INST_0_i_1_n_0 ),
        .I1(a[7]),
        .I2(\spo[2]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[2]_INST_0_i_3_n_0 ),
        .O(spo[2]));
  LUT6 #(
    .INIT(64'h4050004001105043)) 
    \spo[2]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hD7040A04F255CC02)) 
    \spo[2]_INST_0_i_2 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFBF0083FCBF008C)) 
    \spo[2]_INST_0_i_3 
       (.I0(a[0]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[2]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[2]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[3]_INST_0 
       (.I0(\spo[3]_INST_0_i_1_n_0 ),
        .I1(a[7]),
        .I2(\spo[3]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[3]_INST_0_i_3_n_0 ),
        .O(spo[3]));
  LUT6 #(
    .INIT(64'h0300030333330007)) 
    \spo[3]_INST_0_i_1 
       (.I0(a[4]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[1]),
        .O(\spo[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7777FC330474CC70)) 
    \spo[3]_INST_0_i_2 
       (.I0(a[0]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[3]),
        .I4(a[1]),
        .I5(a[2]),
        .O(\spo[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBAFFFA4055BA00D0)) 
    \spo[3]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[1]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[2]),
        .I5(a[3]),
        .O(\spo[3]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[4]_INST_0 
       (.I0(\spo[4]_INST_0_i_1_n_0 ),
        .I1(a[7]),
        .I2(\spo[4]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[4]_INST_0_i_3_n_0 ),
        .O(spo[4]));
  LUT6 #(
    .INIT(64'h4444040450514546)) 
    \spo[4]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[4]),
        .I4(a[1]),
        .I5(a[3]),
        .O(\spo[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h33000300BBBB4304)) 
    \spo[4]_INST_0_i_2 
       (.I0(a[0]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[3]),
        .I5(a[2]),
        .O(\spo[4]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h04448A88)) 
    \spo[4]_INST_0_i_3 
       (.I0(a[5]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[1]),
        .I4(a[4]),
        .O(\spo[4]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \spo[5]_INST_0 
       (.I0(\spo[5]_INST_0_i_1_n_0 ),
        .I1(a[7]),
        .I2(\spo[5]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .I4(\spo[5]_INST_0_i_3_n_0 ),
        .O(spo[5]));
  LUT6 #(
    .INIT(64'h3000030000003007)) 
    \spo[5]_INST_0_i_1 
       (.I0(a[4]),
        .I1(a[5]),
        .I2(a[0]),
        .I3(a[2]),
        .I4(a[3]),
        .I5(a[1]),
        .O(\spo[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80804B4800330704)) 
    \spo[5]_INST_0_i_2 
       (.I0(a[0]),
        .I1(a[5]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[3]),
        .I5(a[2]),
        .O(\spo[5]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h4C70)) 
    \spo[5]_INST_0_i_3 
       (.I0(a[2]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[3]),
        .O(\spo[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00FF0000E200E200)) 
    \spo[6]_INST_0 
       (.I0(\spo[6]_INST_0_i_1_n_0 ),
        .I1(a[5]),
        .I2(\spo[29]_INST_0_i_1_n_0 ),
        .I3(a[7]),
        .I4(\spo[6]_INST_0_i_2_n_0 ),
        .I5(a[6]),
        .O(spo[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8D7B)) 
    \spo[6]_INST_0_i_1 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[1]),
        .O(\spo[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h87FF8700DB00DAFF)) 
    \spo[6]_INST_0_i_2 
       (.I0(a[0]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[4]),
        .I5(a[3]),
        .O(\spo[6]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \spo[7]_INST_0 
       (.I0(\spo[7]_INST_0_i_1_n_0 ),
        .I1(a[7]),
        .I2(\spo[7]_INST_0_i_2_n_0 ),
        .I3(a[6]),
        .O(spo[7]));
  LUT6 #(
    .INIT(64'h0000000001004000)) 
    \spo[7]_INST_0_i_1 
       (.I0(a[5]),
        .I1(a[0]),
        .I2(a[1]),
        .I3(a[3]),
        .I4(a[2]),
        .I5(a[6]),
        .O(\spo[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0808404100000000)) 
    \spo[7]_INST_0_i_2 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[2]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[5]),
        .O(\spo[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000020000)) 
    \spo[8]_INST_0 
       (.I0(a[7]),
        .I1(a[5]),
        .I2(a[2]),
        .I3(\spo[8]_INST_0_i_1_n_0 ),
        .I4(a[0]),
        .I5(a[6]),
        .O(spo[8]));
  LUT2 #(
    .INIT(4'h7)) 
    \spo[8]_INST_0_i_1 
       (.I0(a[3]),
        .I1(a[1]),
        .O(\spo[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000300000000808)) 
    \spo[9]_INST_0 
       (.I0(\spo[9]_INST_0_i_1_n_0 ),
        .I1(a[7]),
        .I2(a[5]),
        .I3(\spo[9]_INST_0_i_2_n_0 ),
        .I4(a[0]),
        .I5(a[6]),
        .O(spo[19]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \spo[9]_INST_0_i_1 
       (.I0(a[1]),
        .I1(a[3]),
        .I2(a[2]),
        .O(\spo[9]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h00C1)) 
    \spo[9]_INST_0_i_2 
       (.I0(a[4]),
        .I1(a[2]),
        .I2(a[3]),
        .I3(a[1]),
        .O(\spo[9]_INST_0_i_2_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
