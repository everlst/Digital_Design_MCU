// ============================================================================
//  文件名   : controller.v
//  模块名   : controller
//  功能描述 : ARM 单周期 CPU —— 控制器
//             负责依据当前指令与 ALU 标志位 (NZCV) 产生各种控制信号，
//             其中涉及两个子模块：
//               • decoder    ─ 指令译码（组合逻辑）
//               • condlogic  ─ 条件执行与流水标志寄存（时序逻辑）
// ----------------------------------------------------------------------------
//  Verilog-2001 版本说明
//    • SystemVerilog 的  `logic`  →  Verilog 的 `wire`（均为组合连线）
//    • ANSI-style 端口写法在大多数综合/仿真工具 (IEEE-1364-2001) 均已支持
//    • 若目标工具不支持 ANSI-style，可改用传统“端口列表 + 内部声明”写法
// ----------------------------------------------------------------------------
//  端口定义
//    clk        : 时钟，上升沿触发
//    reset      : 同步复位，高电平有效
//    Instr      : 指令高 20 位 (Instr[31:12])，含 Cond、Op、Funct 域
//    ALUFlags   : 来自 datapath 的当前 NZCV 标志 {N,Z,C,V}
//    RegSrc     : 选择读寄存器号来源  (由 decoder 产生，经 condlogic 过滤)
//    RegWrite   : 寄存器堆写使能    (真正写入时机由 condlogic 决定)
//    ImmSrc     : 立即数扩展方式
//    ALUSrc     : ALU 第二操作数选择 (0=Reg, 1=Imm)
//    ALUControl : ALU 运算选择信号   (例如 00=ADD, 01=SUB, 10=AND, 11=ORR)
//    MemtoReg   : 回写数据源选择    (0=ALUResult, 1=ReadData)
//    MemWrite   : 数据存储器写使能
//    PCSrc      : PC 更新来源       (0=顺序 PC+4, 1=分支 / 跳转目标)
// ============================================================================
(*DONT_TOUCH="YES"*) module controller (
  input         clk,       // 时钟
  input         reset,     // 同步复位（高有效）
  input [31:12] Instr,     // 指令位段
  input [  3:0] ALUFlags,  // ALU NZCV 标志
  input         mul,

  output [3:0] RegSrc,      // 寄存器读端口选择
  output       RegWrite,    // 寄存器写使能
  output [2:0] ImmSrc,      // 立即数扩展控制
  output       ALUSrc,      // ALU SrcB 选择
  output [2:0] ALUControl,  // ALU 运算控制
  output       MemtoReg,    // 写回数据选择
  output       MemWrite,    // 数据存储器写使能
  output       PCSrc        // PC 更新选择
);

  // --------------------------------------------------------------------
  // 内部连线
  // --------------------------------------------------------------------
(*DONT_TOUCH="YES"*) wire [1:0] FlagW;  // 条件满足时，哪些 NZCV 位需要被 datapath 写回wire [1:0] FlagW;  // 条件满足时，哪些 NZCV 位需要被 datapath 写回
(*DONT_TOUCH="YES"*) wire       PCS;  // 条件化 PC 写使能（分支指令）wire       PCS;  // 条件化 PC 写使能（分支指令）
(*DONT_TOUCH="YES"*) wire       RegW;  // 条件化寄存器写使能 (decoder → condlogic)wire       RegW;  // 条件化寄存器写使能 (decoder → condlogic)
(*DONT_TOUCH="YES"*) wire       MemW;  // 条件化数据存储器写使能 (decoder → condlogic)wire       MemW;  // 条件化数据存储器写使能 (decoder → condlogic)

  // --------------------------------------------------------------------
  // ① 指令译码 ─ 纯组合逻辑
  //    解析:
  //      • Instr[27:26] : 主操作码 (如 00=数据处理, 01=一次存储, 10=分支)
  //      • Instr[25:20] : 功能/位宽/立即数标志
  //      • Instr[15:12] : 目的寄存器 Rd
  // --------------------------------------------------------------------
  decoder dec (
    /* instr fields */
    .Op        (Instr[27:26]),  // 主操作码
    .Funct     (Instr[25:20]),  // 功能位
    .Rd        (Instr[15:12]),  // Rd
    /* outputs to condlogic / datapath */
    .FlagW     (FlagW),         // 指示 datapath 写回哪些 NZCV
    .PCS       (PCS),           // 条件化 PC 写
    .RegW      (RegW),          // 条件化寄存器写
    .MemW      (MemW),          // 条件化数据存储器写
    .MemtoReg  (MemtoReg),      // 写回数据选择
    .ALUSrc    (ALUSrc),        // ALU SrcB 选择
    .ImmSrc    (ImmSrc),        // 立即数扩展方式
    .RegSrc    (RegSrc),        // 寄存器读端口选择
    .ALUControl(ALUControl),    // ALU 运算控制
    .mul       (mul)            // 是否为乘法指令
  );

  // --------------------------------------------------------------------
  // ② 条件执行逻辑 ─ 时序逻辑
  //    • 基于指令顶 4 位 Cond 字段 + 当前 NZCV 判定条件是否成立
  //    • 一旦条件满足，则把 RegW/MemW/PCS 等写使能发往 datapath
  //    • FlagW 亦在此处寄存，以保证与运算结果同步
  // --------------------------------------------------------------------
  condlogic cl (
    .clk     (clk),           // 时钟
    .reset   (reset),         // 同步复位
    .Cond    (Instr[31:28]),  // Cond 条件码
    .ALUFlags(ALUFlags),      // 当前 NZCV
    .FlagW   (FlagW),         // 需写回的 NZCV 位
    .PCS     (PCS),           // 来自 decoder 的 PC 写请求
    .RegW    (RegW),          // 来自 decoder 的寄存器写请求
    .MemW    (MemW),          // 来自 decoder 的 Mem 写请求
    /* Outputs */
    .PCSrc   (PCSrc),         // 实际的 PCSrc（条件化后）
    .RegWrite(RegWrite),      // 实际的 RegWrite
    .MemWrite(MemWrite)       // 实际的 MemWrite
  );

endmodule
