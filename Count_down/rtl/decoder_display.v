module decoder_display (
  input  wire       clk,       // 建议 1~10 MHz
  input  wire       rst,
  input  wire [3:0] bcd_tens,  // 十位
  input  wire [3:0] bcd_ones,  // 个位
  output reg  [3:0] seg_sel,   // AN3:AN0  低电平有效，该项目用到 AN0/AN1
  output reg  [7:0] seg_out    // 段码（继承低电平有效）
);
  // 分频：计数达到 N/2 翻转位选 → 约 1 kHz × 2 = 2 kHz 刷新频率
  reg [12:0] cnt;
  always @(posedge clk) begin
    if (rst) cnt <= 0;
    else cnt <= cnt + 13'd1;
  end

  wire sel = cnt[12];  // 最高位翻转，分频 8192 次（13 位计数器）→ 1 kHz

  // 片选
  always @(posedge clk) begin
    if (rst) seg_sel <= 4'b1111;
    else if (sel) seg_sel <= 4'b1101;  // AN1
    else seg_sel <= 4'b1110;  // AN0
  end

  // 段码
  wire [7:0] seg_tens, seg_ones;
  bcd7seg u1 (
    .bcd(bcd_tens),  //bcd码输入
    .seg(seg_tens)   //段码输出
  );
  bcd7seg u2 (
    .bcd(bcd_ones),
    .seg(seg_ones)
  );

  always @(posedge clk) begin
    if (rst) seg_out <= 8'hFF;
    else seg_out <= sel ? seg_tens : seg_ones;  // 依据片选信号选择显示的段码
  end
endmodule
