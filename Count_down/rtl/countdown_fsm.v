`timescale 1ns / 1ps
// ============================================================================
//  倒计时状态机 (≤60 s)
//  - start_pause_p : 上升沿脉冲，空闲→运行→暂停→运行…循环
//  - reset_p       : 上升沿脉冲，立刻恢复默认时间并回到空闲
//  - add_p / sub_p : 在 Idle 或 Pause 状态可 +1 / -1 秒
//  - running       : 高电平 = 计时进行中
// ============================================================================
module countdown_fsm #(
  parameter DEFAULT_TIME = 6'd60,      // 上电默认 60 s（范围 0-60）
  parameter CLK_FREQ_HZ  = 10_000_000  // 输入时钟（此处 10 MHz）
) (
  input wire clk,  // 时钟
  input wire rst,  // 同步复位（高有效）

  // === 消抖后的 1 个 clk 周期脉冲 ===
  input wire start_pause_p,
  input wire reset_p,
  input wire add_p,
  input wire sub_p,

  // === 输出 ===
  output reg [5:0] seconds,  // 当前剩余秒数 0-60
  output reg       running   // 1 = RUN 状态
);

  // --------------------------------------------------------------------
  // 1 Hz 时基：计数到 CLK_FREQ_HZ-1 产生 1 个周期的 tick_1hz
  // --------------------------------------------------------------------
  localparam DIV_CNT_MAX = CLK_FREQ_HZ - 1;  // 0 ... N-1
  // 计算位宽（$clog2 需要 SV，这里手算 24 位够用 16M+）
  reg [23:0] div_cnt;
  reg        tick_1hz;  // 1 clk 宽脉冲

  always @(posedge clk) begin
    if (rst) begin
      div_cnt  <= 24'd0;
      tick_1hz <= 1'b0;
    end else if (div_cnt == DIV_CNT_MAX) begin
      div_cnt  <= 24'd0;
      tick_1hz <= 1'b1;  // 产生脉冲
    end else begin
      div_cnt  <= div_cnt + 24'd1;
      tick_1hz <= 1'b0;
    end
  end

  // --------------------------------------------------------------------
  // 状态机编码（2 bit）
  // --------------------------------------------------------------------
  localparam S_IDLE = 2'd0;
  localparam S_RUN = 2'd1;
  localparam S_PAUSE = 2'd2;

  reg [1:0] state, state_nxt;

  // ---- 组合：状态转移 ----
  always @(*) begin
    state_nxt = state;  // 缺省保持

    case (state)
      S_IDLE: begin
        if (start_pause_p && seconds != 6'd0) state_nxt = S_RUN;
      end

      S_RUN: begin
        if (start_pause_p) state_nxt = S_PAUSE;
        else if (seconds == 6'd0)  // 计到 0 自动回空闲
          state_nxt = S_IDLE;
      end

      S_PAUSE: begin
        if (start_pause_p) state_nxt = (seconds == 6'd0) ? S_IDLE : S_RUN;
      end
    endcase

    // 复位键最高优先级
    if (reset_p) state_nxt = S_IDLE;
  end

  // ---- 时序：状态寄存 ----
  always @(posedge clk) begin
    if (rst) state <= S_IDLE;
    else state <= state_nxt;
  end

  // --------------------------------------------------------------------
  // seconds 计数与按键调节
  // --------------------------------------------------------------------
  always @(posedge clk) begin
    if (rst || reset_p) seconds <= DEFAULT_TIME;  // 总复位 / 单独复位
    else begin
      // Idle 或 Pause 可调时间
      if (state != S_RUN) begin
        if (add_p && seconds < 6'd60) seconds <= seconds + 6'd1;
        else if (sub_p && seconds > 6'd0) seconds <= seconds - 6'd1;
      end

      // 运行状态下每秒递减
      if (state == S_RUN && tick_1hz && seconds != 6'd0) seconds <= seconds - 6'd1;
    end
  end

  // --------------------------------------------------------------------
  // running 指示
  // --------------------------------------------------------------------
  always @(posedge clk) begin
    if (rst) running <= 1'b0;
    else running <= (state == S_RUN);
  end

endmodule
