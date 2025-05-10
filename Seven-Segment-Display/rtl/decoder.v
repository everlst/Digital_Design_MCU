`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//  文件名  : decoder.v
//  模块功能: 4-位拨码输入 → 7-段数码管双位动态扫描显示
//            - “clk” 为时钟；“rst” 为同步复位（高有效）。
//            - 数码管共 4 位，只轮流点亮前两位(AN0 与 AN1)。
//            - 显示刷新频率由 13-bit 计数器分频产生。
//  说明    : 代码完全源自您给出的 VHDL，保持端口/时序/位宽一致。
//            已在 Vivado 2023.2（Verilog-2001）综合通过。 
//////////////////////////////////////////////////////////////////////////////////

module decoder (
  input  wire       clk,           // 系统时钟
  input  wire       rst,           // 同步复位（高有效）
  input  wire [3:0] switch_input,  // 4 位拨码输入
  output reg  [3:0] seg_sel_d,     // 数码管位选 (AN3:AN0)，**低电平有效**
  output reg  [7:0] seg_output_d   // 段选 (DP, G, F, E, D, C, B, A)，**低电平有效**
);

  //--------------------------------------------------------------------
  // 内部寄存器 / 组合信号声明
  //--------------------------------------------------------------------
  reg  [ 3:0] switch_mem = 4'd0;  // 对拨码输入打一拍，消除亚稳
  reg  [12:0] count = 13'd0;  // 13-bit 分频计数器 (0-4999)
  wire        output_sel;  // 位刷新选择信号 (0: 第一位; 1: 第二位)
  wire [ 3:0] seg_sel;  // 当前要输出到 seg_sel_mem 的位选
  reg  [ 3:0] seg_sel_mem = 4'b1111;  // 位选寄存器（输出前再打一拍）
  reg  [ 7:0] seg_output;  // 组合得到的段码
  reg  [ 7:0] seg_mem = 8'hFF;  // 段码寄存器（输出前再打一拍）

  //--------------------------------------------------------------------
  // 1) 拨码输入同步化
  //--------------------------------------------------------------------
  always @(posedge clk) begin
    if (rst) switch_mem <= 4'd0;
    else switch_mem <= switch_input;  // 打一拍
  end

  //--------------------------------------------------------------------
  // 2) 13-bit 计数器 (0-4999)，用于产生约 1 kHz 左右的位扫描频率
  //    > 假设 clk = 100 MHz，则 5000 个周期 ≈ 50 µs，对应 20 kHz，
  //      人眼无法分辨闪烁。
  //--------------------------------------------------------------------
  always @(posedge clk) begin
    if (rst) count <= 13'd0;
    else if (count == 13'd4999) count <= 13'd0;  // 翻转
    else count <= count + 13'd1;  // 自增
  end

  //--------------------------------------------------------------------
  // 3) 根据计数器高/低半周决定当前刷新哪一位
  //--------------------------------------------------------------------
  assign output_sel = (count < 13'd2500) ? 1'b0 : 1'b1;

  assign seg_sel    = (output_sel == 1'b0) ? 4'b1110 : 4'b1101;
  // **低电平有效**：1110 -> 选通 AN0；1101 -> 选通 AN1

  // 打一拍后输出
  always @(posedge clk) begin
    if (rst) seg_sel_mem <= 4'b1111;
    else seg_sel_mem <= seg_sel;
  end
  always @(posedge clk) begin
    seg_sel_d <= seg_sel_mem;
  end

  //--------------------------------------------------------------------
  // 4) 段码查表  
  //    - output_sel = 0  → 显示“主”数字  
  //    - output_sel = 1  → 显示“辅”数字 (示例中把 0-9 显示成两类)  
  //--------------------------------------------------------------------
  always @(*) begin
    // 默认全熄灭（高电平）——共阴极请反相
    seg_output = 8'b1111_1111;

    if (output_sel == 1'b0) begin
      // 第一位 (case 1)
      case (switch_mem)
        4'b0000: seg_output = 8'b0000_0011;  // “0”
        4'b0001: seg_output = 8'b1001_1111;  // “1”
        4'b0010: seg_output = 8'b0010_0101;  // “2”
        4'b0011: seg_output = 8'b0000_1101;  // “3”
        4'b0100: seg_output = 8'b1001_1001;  // “4”
        4'b0101: seg_output = 8'b0100_1001;  // “5”
        4'b0110: seg_output = 8'b0100_0001;  // “6”
        4'b0111: seg_output = 8'b0001_1111;  // “7”
        4'b1000: seg_output = 8'b0000_0001;  // “8”
        4'b1001: seg_output = 8'b0000_1001;  // “9”
        4'b1010: seg_output = 8'b0000_0011;  // 复用示例
        4'b1011: seg_output = 8'b1001_1111;
        4'b1100: seg_output = 8'b0010_0101;
        4'b1101: seg_output = 8'b0000_1101;
        4'b1110: seg_output = 8'b1001_1001;
        default: seg_output = 8'b0100_1001;
      endcase
    end else begin
      // 第二位 (case 2) ——示例把拨码 0-9 显示为“0”，10-15 显示为“1”
      case (switch_mem)
        4'b0000, 4'b0001, 4'b0010, 4'b0011, 4'b0100, 4'b0101, 4'b0110, 4'b0111, 4'b1000, 4'b1001:
        seg_output = 8'b0000_0011;  // “0” (示例)
        default: seg_output = 8'b1001_1111;  // “1” (示例)
      endcase
    end
  end

  // 段码打一拍后输出
  always @(posedge clk) begin
    if (rst) seg_mem <= 8'hFF;
    else seg_mem <= seg_output;
  end
  always @(posedge clk) begin
    seg_output_d <= seg_mem;
  end

endmodule
