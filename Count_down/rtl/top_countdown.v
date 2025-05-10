module top_countdown (
  input  wire       clk_in,          // 板载时钟，如 100 MHz
  input  wire       rst_btn,         // 全局复位键（高有效）
  input  wire       PB_start_pause,  // 4 个独立按键
  input  wire       PB_reset,
  input  wire       PB_add,
  input  wire       PB_sub,
  output wire [3:0] seg_sel,         // 数码管 AN3:AN0
  output wire [7:0] seg_output       // 段码 DP,G,F,E,D,C,B,A
);

  //----------------------------------------------------------------------
  // 1) 时钟向导：100 MHz → 10 MHz
  //----------------------------------------------------------------------
  wire clk_10M;
  clk_wiz u_clk (
    .clk_in1 (clk_in),
    .clk_out1(clk_10M)
  );

  //----------------------------------------------------------------------
  // 2) 4 键消抖
  //----------------------------------------------------------------------
  wire [3:0] key_pulse;
  button_debounce #(
    .WIDTH(4)
  ) u_db (
    .clk       (clk_10M),
    .rst       (rst_btn),
    .key_in    ({PB_sub, PB_add, PB_reset, PB_start_pause}),
    .pulse_out (key_pulse),
    .active_low(1'b1)                                         // 若为低电平按下
  );
  wire       start_pause_p = key_pulse[0];
  wire       reset_p = key_pulse[1];
  wire       add_p = key_pulse[2];
  wire       sub_p = key_pulse[3];

  //----------------------------------------------------------------------
  // 3) 倒计时状态机
  //----------------------------------------------------------------------
  wire [5:0] seconds;
  wire       running;
  countdown_fsm u_fsm (
    .clk          (clk_10M),
    .rst          (rst_btn),
    .start_pause_p(start_pause_p),
    .reset_p      (reset_p),
    .add_p        (add_p),
    .sub_p        (sub_p),
    .seconds      (seconds),
    .running      (running)
  );

  //----------------------------------------------------------------------
  // 4) BCD 拆分：sec / 10, sec % 10
  //----------------------------------------------------------------------
  wire [3:0] bcd_tens = seconds / 10;
  wire [3:0] bcd_ones = seconds % 10;

  //----------------------------------------------------------------------
  // 5) 数码管两位动态刷新
  //----------------------------------------------------------------------
  decoder_display u_disp (
    .clk     (clk_10M),
    .rst     (rst_btn),
    .bcd_tens(bcd_tens),
    .bcd_ones(bcd_ones),
    .seg_sel (seg_sel),
    .seg_out (seg_output)
  );

endmodule
