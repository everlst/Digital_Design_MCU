// ============================================================================
//  文件名   : top.v
//  模块名   : top
// ============================================================================
module top (
    input clk_in,  // 时钟
    input reset    // 同步复位（进入 testbench 时由 stimuli 产生）
);
  wire [31:0] WriteData_0;
  wire [31:0] WriteData_1;
  wire [31:0] WriteData_2;
  wire [31:0] WriteData_3;
  wire [31:0] WriteData_4;
  wire [31:0] WriteData_5;
  wire [31:0] WriteData_6;
  wire [31:0] WriteData_7;

  wire [31:0] DataAdr_0;
  wire [31:0] DataAdr_1;
  wire [31:0] DataAdr_2;
  wire [31:0] DataAdr_3;
  wire [31:0] DataAdr_4;
  wire [31:0] DataAdr_5;
  wire [31:0] DataAdr_6;
  wire [31:0] DataAdr_7;
  wire        MemWrite_0;  // CPU 0 的数据存储器写使能
  wire        MemWrite_1;  // CPU 1 的数据存储器写使能
  wire        MemWrite_2;  // CPU 2 的数据存储器写使能
  wire        MemWrite_3;  // CPU 3 的数据存储器写使能
  wire        MemWrite_4;  // CPU 4 的数据存储器写使能
  wire        MemWrite_5;  // CPU 5 的数据存储器写使能
  wire        MemWrite_6;  // CPU 6 的数据存储器写使能
  wire        MemWrite_7;  // CPU 7 的数据存储器写使能

  // 优化MemWrite信号合并方式，使用中间变量减少逻辑级数
  wire        MemWrite_01 = MemWrite_0 | MemWrite_1;
  wire        MemWrite_23 = MemWrite_2 | MemWrite_3;
  wire        MemWrite_45 = MemWrite_4 | MemWrite_5;
  wire        MemWrite_67 = MemWrite_6 | MemWrite_7;
  wire        MemWrite_0123 = MemWrite_01 | MemWrite_23;
  wire        MemWrite_4567 = MemWrite_45 | MemWrite_67;
  wire        MemWrite = MemWrite_0123 | MemWrite_4567;

  // --------------------------------------------------------------------
  // 时钟生成：时钟输入 clk_in，输出 clk
  // --------------------------------------------------------------------
  wire        clk;  // 时钟输出

  clk_wiz_0 u_clk (
      // Clock out ports
      .clk_out1(clk),    // output clk_out1
      // Clock in ports
      .clk_in1 (clk_in)
  );  // input clk_in1

  // --------------------------------------------------------------------
  // 内部连线：CPU <-> 存储器
  // --------------------------------------------------------------------
  wire [31:0] PC_0;  // 程序计数器——连接到指令存储器地址
  wire [31:0] PC_1;  // 程序计数器——连接到指令存储器地址
  wire [31:0] PC_2;  // 程序计数器——连接到指令存储器地址
  wire [31:0] PC_3;  // 程序计数器——连接到指令存储器地址
  wire [31:0] PC_4;  // 程序计数器——连接到指令存储器地址
  wire [31:0] PC_5;  // 程序计数器——连接到指令存储器地址
  wire [31:0] PC_6;  // 程序计数器——连接到指令存储器地址
  wire [31:0] PC_7;  // 程序计数器——连接到指令存储器地址


  wire [31:0] Instr_0;  // 从指令存储器读出的 32-bit 指令
  wire [31:0] Instr_1;  // 从指令存储器读出的 32-bit 指令
  wire [31:0] Instr_2;  // 从指令存储器读出的 32-bit 指令
  wire [31:0] Instr_3;  // 从指令存储器读出的 32-bit 指令
  wire [31:0] Instr_4;  // 从指令存储器读出的 32-bit 指令
  wire [31:0] Instr_5;  // 从指令存储器读出的 32-bit 指令
  wire [31:0] Instr_6;  // 从指令存储器读出的 32-bit 指令
  wire [31:0] Instr_7;  // 从指令存储器读出的 32-bit 指令

  wire [31:0] ReadData_0;  // 从数据存储器返回的数据
  wire [31:0] ReadData_1;  // 从数据存储器返回的数据
  wire [31:0] ReadData_2;  // 从数据存储器返回的数据
  wire [31:0] ReadData_3;  // 从数据存储器返回的数据
  wire [31:0] ReadData_4;  // 从数据存储器返回的数据
  wire [31:0] ReadData_5;  // 从数据存储器返回的数据
  wire [31:0] ReadData_6;  // 从数据存储器返回的数据
  wire [31:0] ReadData_7;  // 从数据存储器返回的数据

  // 将ready作为寄存器信号，初始值为1
  reg ready = 1'b1;

  // =========================================================================
  // ① CPU 核心实例化
  //    端口定义见 arm.v，ALUResult 即写地址 DataAdr
  // =========================================================================
  arm cpu_0 (
      .clk      (clk),
      .reset    (reset),
      .PC       (PC_0),
      .Instr    (Instr_0),
      .MemWrite (MemWrite_0),
      .ALUResult(DataAdr_0),    // 对 STR/LDR 为地址
      .WriteData(WriteData_0),  // 待写入 dmem 的数据
      .ReadData (ReadData_0)    // 来自 dmem 的读数据
  );

  arm cpu_1 (
      .clk      (clk),
      .reset    (ready),
      .PC       (PC_1),
      .Instr    (Instr_1),
      .MemWrite (MemWrite_1),
      .ALUResult(DataAdr_1),    // 对 STR/LDR 为地址
      .WriteData(WriteData_1),  // 待写入 dmem 的数据
      .ReadData (ReadData_1)    // 来自 dmem 的读数据
  );

  arm cpu_2 (
      .clk      (clk),
      .reset    (ready),
      .PC       (PC_2),
      .Instr    (Instr_2),
      .MemWrite (MemWrite_2),
      .ALUResult(DataAdr_2),    // 对 STR/LDR 为地址
      .WriteData(WriteData_2),  // 待写入 dmem 的数据
      .ReadData (ReadData_2)    // 来自 dmem 的读数据
  );

  arm cpu_3 (
      .clk      (clk),
      .reset    (ready),
      .PC       (PC_3),
      .Instr    (Instr_3),
      .MemWrite (MemWrite_3),
      .ALUResult(DataAdr_3),    // 对 STR/LDR 为地址
      .WriteData(WriteData_3),  // 待写入 dmem 的数据
      .ReadData (ReadData_3)    // 来自 dmem 的读数据
  );

  arm cpu_4 (
      .clk      (clk),
      .reset    (ready),
      .PC       (PC_4),
      .Instr    (Instr_4),
      .MemWrite (MemWrite_4),
      .ALUResult(DataAdr_4),    // 对 STR/LDR 为地址
      .WriteData(WriteData_4),  // 待写入 dmem 的数据
      .ReadData (ReadData_4)    // 来自 dmem 的读数据
  );

  arm cpu_5 (
      .clk      (clk),
      .reset    (ready),
      .PC       (PC_5),
      .Instr    (Instr_5),
      .MemWrite (MemWrite_5),
      .ALUResult(DataAdr_5),    // 对 STR/LDR 为地址
      .WriteData(WriteData_5),  // 待写入 dmem 的数据
      .ReadData (ReadData_5)    // 来自 dmem 的读数据
  );

  arm cpu_6 (
      .clk      (clk),
      .reset    (ready),
      .PC       (PC_6),
      .Instr    (Instr_6),
      .MemWrite (MemWrite_6),
      .ALUResult(DataAdr_6),    // 对 STR/LDR 为地址
      .WriteData(WriteData_6),  // 待写入 dmem 的数据
      .ReadData (ReadData_6)    // 来自 dmem 的读数据
  );

  arm cpu_7 (
      .clk      (clk),
      .reset    (ready),
      .PC       (PC_7),
      .Instr    (Instr_7),
      .MemWrite (MemWrite_7),
      .ALUResult(DataAdr_7),    // 对 STR/LDR 为地址
      .WriteData(WriteData_7),  // 待写入 dmem 的数据
      .ReadData (ReadData_7)    // 来自 dmem 的读数据
  );

  // =========================================================================
  // ② 指令存储器（仿真只读 ROM）
  //    • 读延迟 0，地址直接为 PC（字地址对齐）  
  //    • 端口惯例：.a → address, .rd → read-data
  // =========================================================================

  imem_0 ROM_1 (
      .a  (PC_0[31:2]),  // input wire [6 : 0] a
      .spo(Instr_0)      // output wire [31 : 0] spo
  );

  imem_1 ROM_2 (
      .a  (PC_1[31:2]),  // input wire [6 : 0] a
      .spo(Instr_1)      // output wire [31 : 0] spo
  );

  imem_2 ROM_3 (
      .a  (PC_2[31:2]),  // input wire [6 : 0] a
      .spo(Instr_2)      // output wire [31 : 0] spo
  );

  imem_3 ROM_4 (
      .a  (PC_3[31:2]),  // input wire [6 : 0] a
      .spo(Instr_3)      // output wire [31 : 0] spo
  );

  imem_4 ROM_5 (
      .a  (PC_4[31:2]),  // input wire [6 : 0] a
      .spo(Instr_4)      // output wire [31 : 0] spo
  );

  imem_5 ROM_6 (
      .a  (PC_5[31:2]),  // input wire [6 : 0] a
      .spo(Instr_5)      // output wire [31 : 0] spo
  );

  imem_6 ROM_7 (
      .a  (PC_6[31:2]),  // input wire [6 : 0] a
      .spo(Instr_6)      // output wire [31 : 0] spo
  );

  imem_7 ROM_8 (
      .a  (PC_7[31:2]),  // input wire [6 : 0] a
      .spo(Instr_7)      // output wire [31 : 0] spo
  );

  // =========================================================================
  // ③ 数据存储器
  //    • 写使能 MemWrite，高电平写入  
  //    • 时钟同步：posedge clk  
  //    • 端口：.a(address) .wd(write-data) .rd(read-data) .we(write-enable)
  // =========================================================================
  dmem dm (
      .clk(clk),
      .we(MemWrite),
      .a_0(DataAdr_0),
      .wd_0(WriteData_0),
      .rd_0(ReadData_0),
      .a_1(DataAdr_1),
      .wd_1(WriteData_1),
      .rd_1(ReadData_1),
      .a_2(DataAdr_2),
      .wd_2(WriteData_2),
      .rd_2(ReadData_2),
      .a_3(DataAdr_3),
      .wd_3(WriteData_3),
      .rd_3(ReadData_3),
      .a_4(DataAdr_4),
      .wd_4(WriteData_4),
      .rd_4(ReadData_4),
      .a_5(DataAdr_5),
      .wd_5(WriteData_5),
      .rd_5(ReadData_5),
      .a_6(DataAdr_6),
      .wd_6(WriteData_6),
      .rd_6(ReadData_6),
      .a_7(DataAdr_7),
      .wd_7(WriteData_7),
      .rd_7(ReadData_7),
      .ready(ready)
  );

  reg [15:0] test_vector_in;
  reg [15:0] verify_RAM;
  reg [19:0] cnt_test = 20'd0;

  // 优化计数器逻辑，减少条件判断分支
  always @(posedge clk) begin
    if (reset) begin
      cnt_test <= 20'd0;
      ready <= 1'b1;
    end else begin
      // 简化条件判断，使用更清晰的状态划分
      case (ready)
        1'b0: begin  // ready=0状态
          if (cnt_test < 20'd24) begin
            cnt_test <= cnt_test + 1;
          end
        end
        1'b1: begin  // ready=1状态
          if (cnt_test >= 20'd32) begin
            ready <= 1'b0;
            cnt_test <= 20'd0;
          end else begin
            cnt_test <= cnt_test + 1;
          end
        end
      endcase
    end
  end

  // 简化数据访问逻辑，减少条件判断复杂度
  // 将数据访问条件提前计算
  wire addr7_in_range = (DataAdr_7[8:2] >= 7'd32) && (DataAdr_7[8:2] <= 7'd47);
  wire addr0_in_range = (DataAdr_0[8:2] <= 7'd15);
  wire verify_cond = addr7_in_range && (ready == 1'b0) && (cnt_test >= 20'd24);
  wire test_cond = addr0_in_range && (ready == 1'b1);

  always @(posedge clk) begin
    if (reset) begin
      verify_RAM     <= 16'h0000;
      test_vector_in <= 16'h0000;
    end else begin
      if (verify_cond) begin
        verify_RAM <= ReadData_7[15:0];
      end
      if (test_cond) begin
        test_vector_in <= ReadData_0[15:0];
      end
    end
  end

  ila_0 u_ila (
      .clk(clk),
      .probe0(cnt_test),
      .probe1(test_vector_in),
      .probe2(verify_RAM),
      .probe3(dm.shijian)
  );

endmodule
