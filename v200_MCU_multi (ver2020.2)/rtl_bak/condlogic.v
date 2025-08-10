// =============================================================================
//  文件名   : condlogic.v
//  模块名   : condlogic   ＋  condcheck
// -----------------------------------------------------------------------------
//  功能     : ARM 单周期 CPU 的「条件执行与 NZCV 标志寄存」单元
//             ─ 依据 Cond 条件码 + 当前标志位 (N,Z,C,V) 决定指令是否生效
//             ─ 若条件满足 (CondEx=1) 才使能：RegWrite / MemWrite / PCSrc
//             ─ 同时把 ALUFlags 写入延迟一拍的 Flags 寄存器 (受 FlagW 掩码)
//
//  Verilog-2001 迁移要点
//    1. SystemVerilog 的 `logic` → Verilog `wire` / `reg`
//       * 在组合 always @* 里被赋值的信号 → `reg`
//       * 其余用 `wire`（默认）
//    2. `always_comb` 改为 `always @*`
//    3. 修正拼写：`assgin` → `assign`
//    4. 保持 flopenr#() 实例化接口不变；假设 flopenr 已提供 (含宽度参数、
//       同步复位、使能)。
//
//  端口说明
//    clk, reset  : 时钟 / 同步复位 (高有效)
//    Cond[3:0]   : 指令 Cond 条件码 (EQ/NE/CS/…)
//    ALUFlags    : 来自 datapath 的实时 NZCV
//    FlagW[1:0]  : {1}=写 NZ；{0}=写 CV (仅对 ADD/SUB)
//    PCS         : 来自 decoder，潜在需要写 PC 的指令 (Branch 或 Rd=PC)
//    RegW, MemW  : decoder 给出的“原始”写使能
// -----------------------------------------------------------------------------
//    PCSrc       : 条件过滤后的 PC 写使能 = PCS & CondEx
//    RegWrite    : 条件过滤后的寄存器写使能 = RegW & CondEx
//    MemWrite    : 条件过滤后的数据存储器写使能 = MemW & CondEx
// =============================================================================
(* dont_touch = "true" *) module condlogic (
  input  wire       clk,       // 时钟
  input  wire       reset,     // 同步复位
  input  wire [3:0] Cond,      // 条件码
  input  wire [3:0] ALUFlags,  // ALU 实时 NZCV
  input  wire [1:0] FlagW,     // 要写的标志位掩码
  input  wire       PCS,       // 可能写 PC
  input  wire       RegW,      // 可能写寄存器
  input  wire       MemW,      // 可能写存储器
  output wire       PCSrc,     // 实际 PC 写使能
  output wire       RegWrite,  // 实际寄存器写使能
  output wire       MemWrite   // 实际存储器写使能
);

  // --------------------------------------------------------------------
  // 1) FlagWrite  : 条件满足时才启用的 {NZ, CV} 写掩码
  // 2) Flags[3:0] : 延迟一拍的 NZCV（存于 flopenr 寄存器）
  // 3) CondEx     : 条件是否满足，由 condcheck 判定
  // --------------------------------------------------------------------
(* dont_touch = "true" *) wire [1:0] FlagWrite;  // 组合信号 → wire
(* dont_touch = "true" *) wire [3:0] Flags;  // 寄存器输出 → wire
(* dont_touch = "true" *) wire       CondEx;  // 条件成立标志

  // --------------------------------------------------------------------
  // **** ① NZ / CV 标志寄存器 ****
  //     • 高两位 (N,Z) 用 FlagWrite[1] 作为写使能
  //     • 低两位 (C,V) 用 FlagWrite[0] 作为写使能
  // --------------------------------------------------------------------
  flopenr #(
    .WIDTH(2)
  ) flagreg1 (
    .clk  (clk),
    .reset(reset),
    .en   (FlagWrite[1]),   // 写使能
    .d    (ALUFlags[3:2]),  // N,Z
    .q    (Flags[3:2])      // 延迟版 N,Z
  );

  flopenr #(
    .WIDTH(2)
  ) flagreg0 (
    .clk  (clk),
    .reset(reset),
    .en   (FlagWrite[0]),   // 写使能
    .d    (ALUFlags[1:0]),  // C,V
    .q    (Flags[1:0])      // 延迟版 C,V
  );

  // --------------------------------------------------------------------
  // **** ② 条件检查单元 ****
  //     CondEx = 1 → 条件满足
  // --------------------------------------------------------------------
  condcheck cc (
    .Cond  (Cond),
    .Flags (Flags),
    .CondEx(CondEx)
  );

  // --------------------------------------------------------------------
  // **** ③ 组合逻辑生成输出 ****
  // --------------------------------------------------------------------
  assign FlagWrite = FlagW & {2{CondEx}};  // 条件满足才写标志

  assign RegWrite  = RegW & CondEx;  // 条件化寄存器写
  assign MemWrite  = MemW & CondEx;  // 条件化数据写
  assign PCSrc     = PCS & CondEx;  // 条件化 PC 写

endmodule


// =============================================================================
//  子模块 : condcheck
// -----------------------------------------------------------------------------
//  输入   : Cond  (4'b----) — 指令条件字段
//           Flags (N,Z,C,V) — 延迟一拍的标志位
//  输出   : CondEx        — 1 表示条件满足、指令/写使能可以执行
//  逻辑   : 精确对应 ARM ARM 中的 16 个条件码定义
// =============================================================================
(* dont_touch = "true" *) module condcheck (
  input  wire [3:0] Cond,   // 条件码
  input  wire [3:0] Flags,  // {N,Z,C,V}
  output reg        CondEx  // 条件满足标志
);

  // 将 Flags 拆分为单独信号，便于可读性
  (* dont_touch = "true" *) wire neg, zero, carry, overflow, ge;

  assign {neg, zero, carry, overflow} = Flags;
  assign ge                           = (neg == overflow);  // GE = (N == V)

  // 条件译码表（参考 ARM v7-M Architecture Reference Manual）
  always @* begin
    case (Cond)
      4'b0000: CondEx = zero;  // EQ  (Z==1)
      4'b0001: CondEx = ~zero;  // NE  (Z==0)
      4'b0010: CondEx = carry;  // CS/HS (C==1)
      4'b0011: CondEx = ~carry;  // CC/LO (C==0)
      4'b0100: CondEx = neg;  // MI  (N==1)
      4'b0101: CondEx = ~neg;  // PL  (N==0)
      4'b0110: CondEx = overflow;  // VS  (V==1)
      4'b0111: CondEx = ~overflow;  // VC  (V==0)
      4'b1000: CondEx = carry & ~zero;  // HI  (C==1 & Z==0)
      4'b1001: CondEx = ~(carry & ~zero);  // LS  (C==0 | Z==1)
      4'b1010: CondEx = ge;  // GE  (N==V)
      4'b1011: CondEx = ~ge;  // LT  (N!=V)
      4'b1100: CondEx = ~zero & ge;  // GT  (Z==0 & N==V)
      4'b1101: CondEx = zero | ~ge;  // LE  (Z==1 | N!=V)
      4'b1110: CondEx = 1'b1;  // AL  (总是执行)
      default: CondEx = 1'bx;  // 未定义
    endcase
  end

endmodule
