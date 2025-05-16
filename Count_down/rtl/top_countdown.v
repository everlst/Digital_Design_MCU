module top_countdown (
  input wire clk_in,  // 外部时钟信号
  input wire rst,     // 全局复位键（高有效）3

  // 4 个独立按键
  input wire PB_start_pause,
  input wire PB_reset,
  input wire PB_add,
  input wire PB_sub,

  //输出以在数码管上进行显示
  output wire [3:0] seg_sel,    // 数码管 AN3:AN0
  output wire [7:0] seg_output  // 段码 DP,G,F,E,D,C,B,A
);

  //----------------------------------------------------------------------
  // 1) 时钟：100 MHz → 10 MHz
  //----------------------------------------------------------------------
  wire clk_10M;
  clk_wiz u_clk (
    .clk_in1 (clk_in),
    .clk_out1(clk_10M)
  );

  //----------------------------------------------------------------------
  // 2) 4 键消抖后输入
  //----------------------------------------------------------------------
  wire [3:0] key_pulse;
  button_debounce #(
    .WIDTH(4)
  ) u_db (
    .clk      (clk_10M),
    .rst      (rst),
    .key_in   ({PB_sub, PB_add, PB_reset, PB_start_pause}),
    .active   (1'b1),                                        // 高电平按下
    .pulse_out(key_pulse)
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
    .rst          (rst),
    .start_pause_p(start_pause_p),
    .reset_p      (reset_p),
    .add_p        (add_p),
    .sub_p        (sub_p),
    .seconds      (seconds),
    .running      (running)
  );

  //----------------------------------------------------------------------
  // 4) 根据状态机的输出，计算十位与个位
  //----------------------------------------------------------------------
  wire [3:0] bcd_tens = seconds / 10;
  wire [3:0] bcd_ones = seconds % 10;

  //----------------------------------------------------------------------
  // 5) 数码管动态刷新
  //----------------------------------------------------------------------
  decoder_display u_disp (
    .clk     (clk_10M),
    .rst     (rst),
    .bcd_tens(bcd_tens),
    .bcd_ones(bcd_ones),

    //对外输出信号
    .seg_sel(seg_sel),
    .seg_out(seg_output)
  );

endmodule
