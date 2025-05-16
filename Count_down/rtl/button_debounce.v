`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//  多按键消抖 + 上升沿脉冲
//  - 每个按键独立消抖，输出一个 clk 周期的脉冲 pulse_xxx
//  - active = 0 时表示按键为低电平按下；否则为高电平按下
//////////////////////////////////////////////////////////////////////////////////
module button_debounce #(
  parameter integer WIDTH   = 4,
  parameter integer CNT_MAX = 20_000  // 假设 clk=10 MHz → 2 ms 抖动窗口
) (
  input wire             clk,
  input wire             rst,     // 同步复位
  input wire [WIDTH-1:0] key_in,  // 原始按键输入
  input wire             active,  // 0=低有效;1=高有效

  output reg [WIDTH-1:0] pulse_out  // 上升沿脉冲，时长一个周期
);

  reg [WIDTH-1:0] sync_0;
  reg [WIDTH-1:0] sync_1;     // sync_0，sync_1：双触发同步，用两个触发器，尽可能减小触发亚稳态的概率
  reg [WIDTH-1:0] key_level;  // 去抖后的稳定电平
  reg [15:0] cnt[WIDTH-1:0];  // 去抖计数器

  integer i;
  always @(posedge clk) begin
    if (rst) begin
      sync_0    <= 0;
      sync_1    <= 0;
      key_level <= active ? {WIDTH{1'b0}} : 1;
      pulse_out <= 0;
      for (i = 0; i < WIDTH; i = i + 1) cnt[i] <= 0;
    end else begin
      // 同步
      sync_0    <= key_in;
      sync_1    <= sync_0;

      pulse_out <= 0;  // 默认无脉冲输出

      for (i = 0; i < WIDTH; i = i + 1) begin
        // 判断是否与当前稳定电平不同
        if (sync_1[i] != key_level[i]) begin
          // 计数器增加
          if (cnt[i] == CNT_MAX) begin
            if (sync_1[i] != key_level[i]) begin  // 达到稳定时间→仍然与稳定电平不同→确认需要更改状态→同步状态
              key_level[i] <= sync_1[i];
              if ((!active && !sync_1[i]) || (active && sync_1[i])) pulse_out[i] <= 1'b1;
            end
            cnt[i] <= 0;
          end else cnt[i] <= cnt[i] + 16'd1;
        end else begin
          cnt[i] <= 0;  // 与当前稳定电平相同则计数器保持为零
        end
      end
    end
  end
endmodule
