// =============================================================================
//  文件名   : condlogic.v
//  模块名   : condlogic   ＋  condcheck
// -----------------------------------------------------------------------------
//  功能     : ARM 单周期 CPU 的「条件执行与 NZCV 标志寄存」单元
//             ─ 依据 Cond 条件码 + 当前标志位 (N,Z,C,V) 决定指令是否生效
//             ─ 若条件满足 (CondEx=1) 才使能：RegWrite / MemWrite / PCSrc
//             ─ 同时把 ALUFlags 写入延迟一拍的 Flags 寄存器 (受 FlagW 掩码)
// =============================================================================
module condlogic (
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
  wire [1:0] FlagWrite;
  wire [3:0] Flags;
  wire       CondEx;

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
  // 优化点：将条件满足判断与输出使能计算分开为并行路径
  // --------------------------------------------------------------------
  // 预计算条件满足时的写掩码
  assign FlagWrite = FlagW & {2{CondEx}};

  // 并行计算三个输出信号
  assign RegWrite = RegW & CondEx;
  assign MemWrite = MemW & CondEx;
  assign PCSrc    = PCS & CondEx;

endmodule


// =============================================================================
//  子模块 : condcheck - 优化条件检查逻辑
// =============================================================================
module condcheck (
    input  wire [3:0] Cond,   // 条件码
    input  wire [3:0] Flags,  // {N,Z,C,V}
    output reg        CondEx  // 条件满足标志
);
  // 解析标志位 - 更加清晰的命名有助于综合优化
  wire n = Flags[3];  // Negative
  wire z = Flags[2];  // Zero
  wire c = Flags[1];  // Carry
  wire v = Flags[0];  // Overflow

  // 预计算常用条件组合
  wire ge = (n == v);  // 大于等于条件
  wire hi = c & ~z;  // 无符号大于
  wire gt = ~z & ge;  // 有符号大于
  wire le = z | ~ge;  // 小于等于

  // 条件译码表（针对时序优化）
  always @* begin
    case (Cond)
      4'b0000: CondEx = z;  // EQ
      4'b0001: CondEx = ~z;  // NE
      4'b0010: CondEx = c;  // CS/HS
      4'b0011: CondEx = ~c;  // CC/LO
      4'b0100: CondEx = n;  // MI
      4'b0101: CondEx = ~n;  // PL
      4'b0110: CondEx = v;  // VS
      4'b0111: CondEx = ~v;  // VC
      4'b1000: CondEx = hi;  // HI (预计算)
      4'b1001: CondEx = ~hi;  // LS (预计算)
      4'b1010: CondEx = ge;  // GE (预计算)
      4'b1011: CondEx = ~ge;  // LT (预计算)
      4'b1100: CondEx = gt;  // GT (预计算)
      4'b1101: CondEx = le;  // LE (预计算)
      4'b1110: CondEx = 1'b1;  // AL (总是执行)
      default: CondEx = 1'b1;  // 默认为执行 (比原来的1'bx更适合综合)
    endcase
  end
endmodule
