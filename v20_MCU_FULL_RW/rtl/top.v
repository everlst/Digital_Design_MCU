// ============================================================================
//  文件名   : top.v
//  模块名   : top
// -----------------------------------------------------------------------------
//  功能描述 : **单周期 ARM 处理器 SoC 顶层封装**  
//             ┌──────────┐         ┌──────────┐         ┌──────────┐
//             │  指令存储 │<──PC───│          │         │          │
//             │   (imem) │         │   ARM    │───────►│  数据存储 │
//             │          │──Instr─►│  CPU核   │ Write   │  (dmem)  │
//             └──────────┘         │          │ DataAdr │          │
//                                   └──────────┘         └──────────┘
//           • **arm**   : 之前完成的 CPU 核心（Verilog-2001 版）  
//           • **imem**  : 只读指令存储器（ROM / iCache Stub）  
//           • **dmem**  : 数据存储器（RAM / dCache Stub）  
//           • 本顶层负责把三者用总线连线拼接，并对外暴露测试端口。  
// -----------------------------------------------------------------------------
//  Verilog-2001 编码要点
//    1. SystemVerilog 的 `logic` → Verilog 的 `wire`（纯连线，无需 reg）。  
//    2. ANSI-style 端口保留（IEEE-1364-2001 已支持）。  
//    3. 实例化全部改为 **点名端口连接**，读写含义一目了然。  
// ============================================================================
module top (
  input clk_in,  // 时钟
  input reset    // 同步复位（进入 testbench 时由 stimuli 产生）

  // ========= 便于 testbench 观察的 CPU <-> dmem 接口 ====================
  // output [31:0] WriteData,  // 写入数据存储器的数据
  // output [31:0] DataAdr,    // 数据存储器地址（= ALUResult）
  // output        MemWrite    // 数据存储器写使能
);
  wire [31:0] WriteData;
  wire [31:0] DataAdr;
  wire        MemWrite;

  clk_wiz_0 u_clk (
    // Clock out ports
    .clk_out1(clk),    // output clk_out1
    // Clock in ports
    .clk_in1 (clk_in)
  );  // input clk_in1

  // --------------------------------------------------------------------
  // 内部连线：CPU <-> 存储器
  // --------------------------------------------------------------------
  wire [31:0] PC;  // 程序计数器——连接到指令存储器地址
  wire [31:0] Instr;  // 从指令存储器读出的 32-bit 指令
  wire [31:0] ReadData;  // 从数据存储器返回的数据

  // =========================================================================
  // ① CPU 核心实例化
  //    端口定义见 arm.v，ALUResult 即写地址 DataAdr
  // =========================================================================
  arm cpu (
    .clk      (clk),
    .reset    (reset),
    .PC       (PC),
    .Instr    (Instr),
    .MemWrite (MemWrite),
    .ALUResult(DataAdr),    // 对 STR/LDR 为地址
    .WriteData(WriteData),  // 待写入 dmem 的数据
    .ReadData (ReadData)    // 来自 dmem 的读数据
  );

  // =========================================================================
  // ② 指令存储器（仿真只读 ROM）
  //    • 读延迟 0，地址直接为 PC（字地址对齐）  
  //    • 端口惯例：.a → address, .rd → read-data
  // =========================================================================
  imem im (
    .clka(clk),   // 时钟
    .a   (PC),
    .rd  (Instr)
  );

  // =========================================================================
  // ③ 数据存储器
  //    • 写使能 MemWrite，高电平写入  
  //    • 时钟同步：posedge clk  
  //    • 端口：.a(address) .wd(write-data) .rd(read-data) .we(write-enable)
  // =========================================================================
  dmem dm (
    .clk(clk),
    .we (MemWrite),
    .a  (DataAdr),
    .wd (WriteData),
    .rd (ReadData)
  );

  reg [15:0] test_vector_in;
  reg [15:0] verify_RAM;
  reg [19:0] cnt_test = 20'd0;

  always @(*) begin
    if (DataAdr[8:1] <= 7'd15) begin
      // 地址范围 0-15，从ROM_1读取
      test_vector_in = ReadData[15:0];
    end else if (DataAdr[8:1] >= 7'd48 && DataAdr[8:1] <= 7'd63) begin
      // 地址范围 48-63，从verify_RAM读取
      verify_RAM = WriteData[DataAdr[8:1]];
    end else begin
      // 超出范围，返回0或其他默认值
      test_vector_in = 16'h0000;
      verify_RAM     = 16'h0000;
    end
  end

  always @(posedge clk) begin
    if (cnt_test < 162) begin
      cnt_test <= cnt_test + 1;
    end else begin
      cnt_test <= cnt_test;
    end
  end


  ila_0 u_ila (
    .clk(clk),  // input wire clk


    .probe0(test_vector_in),  // input wire [15:0]  probe0  
    .probe1(verify_RAM),      // input wire [15:0]  probe1 
    .probe2(cnt_test)         // input wire [19:0]  probe2
  );

endmodule
