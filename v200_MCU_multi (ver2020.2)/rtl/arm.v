// ============================================================================
//  文件名   : arm.v
//  模块名   : arm
//  说明     : ARM 单周期 CPU 的顶层封装（Verilog-2001 版）
//             由“控制器 controller”与“数据通路 datapath”两大子模块组成。
//             负责把两者的信号线连接起来，并对外暴露 CPU 的关键接口。
// ----------------------------------------------------------------------------
//  端口列表
//  ─ clk        : 时钟信号，所有触发器在上升沿采样
//  ─ reset      : 同步复位（高电平有效）
//  ─ PC         : 当前取指地址（Program Counter）
//  ─ Instr      : 取出的 32 位指令（Instruction word）
//  ─ MemWrite   : 数据存储器写使能，高电平表示进行写操作
//  ─ ALUResult  : ALU 运算结果。若访问数据存储器，则同时为地址
//  ─ WriteData  : 写入数据存储器的数值
//  ─ ReadData   : 从数据存储器返回的读取数据
// ----------------------------------------------------------------------------
//  兼容性提示
//    * 使用 Verilog-2001 的 “ANSI-port” 写法，一般综合工具均支持
//    * 去除了 SystemVerilog 专有的逻辑类型（logic/bit），统一改为 wire
// ============================================================================
 module arm (
  input         clk,        // 时钟
  input         reset,      // 同步复位（高有效）
  output [31:0] PC,         // 程序计数器
  input  [31:0] Instr,      // 取出的指令
  output        MemWrite,   // 数据存储器写使能
  output [31:0] ALUResult,  // ALU 输出 / 数据存储器地址
  output [31:0] WriteData,  // 待写入存储器的数据
  input  [31:0] ReadData    // 从存储器读出的数据
);

  // --------------------------------------------------------------------
  // 内部信号定义
  // --------------------------------------------------------------------
 wire [3:0] ALUFlags;  // NZCV 标志位 {Negative, Zero, Carry, oVerflow}
 wire       RegWrite;  // 通用寄存器文件写使能
 wire       ALUSrc;  // ALU 第二操作数选择：0=寄存器，1=立即数
 wire       MemtoReg;  // 回写数据选择：0=ALUResult，1=ReadData
 wire       PCSrc;  // PC 更新来源：0=PC+4，1=分支目标
 wire [3:0] RegSrc;  // 读取寄存器号的 MUX 选择
 wire [2:0] ImmSrc;  // 立即数字段扩展方式
 wire [2:0] ALUControl;  // ALU 运算控制信号

  // --------------------------------------------------------------------
  // 控制器（controller）
  //   * 解析指令高 20 位（Instr[31:12]）
  //   * 根据当前 ALUFlags 生成控制信号
  // --------------------------------------------------------------------
  controller c (
    /* 输入 */
    .clk       (clk),           // 时钟
    .reset     (reset),         // 同步复位
    .Instr     (Instr[31:12]),  // 指令字段：操作码、功能位、条件码等
    .ALUFlags  (ALUFlags),      // 来自 datapath 的 NZCV
    /* 输出 */
    .RegSrc    (RegSrc),        // 指定两路读端口的寄存器号来源
    .RegWrite  (RegWrite),      // 通用寄存器写使能
    .ImmSrc    (ImmSrc),        // 立即数扩展控制
    .ALUSrc    (ALUSrc),        // ALU 操作数 2 选择
    .ALUControl(ALUControl),    // ALU 运算控制
    .MemtoReg  (MemtoReg),      // 写回数据来源
    .MemWrite  (MemWrite),      // 数据存储器写使能
    .PCSrc     (PCSrc),         // PC 更新来源
    .mul       (Instr[4])
  );

  // --------------------------------------------------------------------
  // 数据通路（datapath）
  //   * 完成指令取址、寄存器读写、ALU 运算、分支地址计算等
  //   * 生成 ALUFlags、PC、Instr、ALUResult、WriteData 等信号
  // --------------------------------------------------------------------
  datapath dp (
    /* 输入控制信号 */
    .clk       (clk),
    .reset     (reset),
    .RegSrc    (RegSrc),
    .RegWrite  (RegWrite),
    .ImmSrc    (ImmSrc),
    .ALUSrc    (ALUSrc),
    .ALUControl(ALUControl),
    .MemtoReg  (MemtoReg),
    .PCSrc     (PCSrc),
    /* 输入数据 */
    .ALUFlags  (ALUFlags),    // controller 读写同一份标志，通过 wire 相连
    /* 输出信号 */
    .PC        (PC),          // 程序计数器
    .Instr     (Instr),       // 当前指令
    .ALUResult (ALUResult),   // ALU 运算结果 / 地址
    .WriteData (WriteData),   // 写入存储器的数据
    /* 存储器接口 */
    .ReadData  (ReadData)     // 从数据存储器读取的数据
  );

endmodule
