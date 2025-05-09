`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//  文件名  : segment_displays.v
//  模块功能: 顶层封装 —— 将时钟分频 IP 与 7 段数码管解码模块级联
//            输入时钟 clk  →  clk_wiz  →  10 MHz 时钟供 decoder 使用
//////////////////////////////////////////////////////////////////////////////////

module segment_displays (
  input  wire       clk,           // 系统时钟（例如板载 100 MHz）
  input  wire       rst,           // 同步复位，高有效
  input  wire [3:0] switch_input,  // 4 位拨码输入
  output wire [3:0] seg_sel,       // 数码管位选，低电平有效 (AN3:AN0)
  output wire [7:0] seg_output     // 数码管段选，低电平有效 (DP,G,F,E,D,C,B,A)
);

  // ------------------------------------------------------------
  // 1) 线网声明
  // ------------------------------------------------------------
  wire clk_10MHz;  // clk_wiz 输出 (10 MHz)，驱动 decoder

  // ------------------------------------------------------------
  // 2) 实例化 Vivado 时钟向导 (Clocking Wizard)
  //    - 建议在 IP Catalog 中创建同名 IP（端口保持一致）
  //    - 若 IP 名不同，如 "clk_wiz_0"，将下行 `clk_wiz` 改成实际名
  // ------------------------------------------------------------
  clk_wiz u_clk_wiz (
    .clk_in1 (clk),
    .clk_out1(clk_10MHz)
  );

  // ------------------------------------------------------------
  // 3) 实例化 7 段数码管解码/扫描模块
  //    - 上一条回答中的 decoder.v
  // ------------------------------------------------------------
  decoder u_decoder (
    .clk         (clk_10MHz),     // 使用 10 MHz 时钟
    .rst         (rst),
    .switch_input(switch_input),
    .seg_sel_d   (seg_sel),
    .seg_output_d(seg_output)
  );

endmodule
