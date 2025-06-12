// ------------------------------------------------------------------
// ----- tb_soc.v ----------------------------------------------------
// ------------------------------------------------------------------
// TestBench：
//   • 10 ns 时钟（100 MHz）
//   • 复位保持 20 ns
//   • 模拟 5 µs（= 500 时钟周期）
//   • 生成 wave.vcd 波形
// ------------------------------------------------------------------
`timescale 1ns / 1ps
module tb_soc;
  reg clk = 1'b0;
  reg rst = 1'b1;

  // 100 MHz clock
  always #5 clk = ~clk;  // 10 ns 周期

  // DUT
  soc_top dut (
    .clk(clk),
    .rst(rst)
  );

  // stimulus
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, dut);

    // 复位 20 ns
    #20 rst = 1'b0;

    // 运行 5 µs
    #5000;
    $finish;
  end
endmodule
