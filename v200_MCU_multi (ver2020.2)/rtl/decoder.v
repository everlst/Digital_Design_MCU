// =============================================================================
//  文件名   : decoder.v
//  模块名   : decoder
// -----------------------------------------------------------------------------
//  功能     : 指令译码（Verilog-2001 版）                                          
//             ┌────────────┐        ┌──────────────┐        ┌───────────────┐
//             │ Instr[27:26] ─┐   ┌▶│  controls[9:0] │──┐  ┌▶│ RegSrc/ImmSrc │ …
//             │ Instr[25:20] │───►│ casex    判断   │──┴─▶│ ALUSrc/MemtoReg│
//             │ Instr[15:12] │───►│            表   │      └───────────────┘
//             └────────────┘        └──────────────┘
//                       ▲                               ▲
//                       │                       ┌───────┴───────┐
//                  Funct[4:0] ────────────────▶│ ALUControl/FlagW│
//                                              └─────────────────┘
//
//  译码思路 :
//    1. “主操作码” Op[1:0]、Funct[5]、Funct[0] 决定 10 位组合信号 controls
//       ─ controls 打包了 8 个控制位 + 2 个 ALU 相关位 (Branch, ALUOp)。
//    2. 再根据 ALUOp 决定     ─► ALUControl (ADD/SUB/AND/ORR) 及 FlagW 写标志。
//    3. 最终得出 RegWrite/MemWrite/PCS/ALUSrc/ImmSrc/RegSrc/… 等线束。
// -----------------------------------------------------------------------------
//  端口说明
//    Op[1:0]    : Instr[27:26]，ARM 指令主操作码                                  |
//    Funct[5:0] : Instr[25:20]，功能位 (立即数标志 / 位宽 / 运算子等)             |
//    Rd[3:0]    : Instr[15:12]，目的通用寄存器号                                   |
//    FlagW[1:0] : {N,Z} 写使能；C/V 位是否写由 FlagW[1:0] 与 ALUControl 决定       |-- 输出
//    PCS        : Program Counter 选择；用于实现分支与写 PC 指令                   |
//    RegW       : 通用寄存器堆写使能                                              |
//    MemW       : 数据存储器写使能                                                |
//    MemtoReg   : 写回数据来源 (0=ALUResult, 1=ReadData)                           |
//    ALUSrc     : ALU 第二操作数来源 (0=寄存器, 1=立即数)                           |
//    ImmSrc     : 立即数扩展方式 (00=移位Imm, 01=8位, 10=分支偏移, 11=栈偏移等)    |
//    RegSrc     : {Asrc, Bsrc} 选择读寄存器号                                     |
//    ALUControl : 00=ADD, 01=SUB, 10=AND, 11=ORR                                  |
// =============================================================================
 module decoder (
  input [1:0] Op,     // 指令主操作码
  input [5:0] Funct,  // 功能位 (Funct[5] = I 位; Funct[0] = S 位)
  input [3:0] Rd,     // 目的寄存器号
  input       mul,

  output reg [1:0] FlagW,      // NZ 写使能
  output           PCS,        // 选择 PC 写
  output           RegW,       // 寄存器写使能
  output           MemW,       // 数据存储器写使能
  output           MemtoReg,   // 写回数据选择
  output           ALUSrc,     // ALU 操作数 2 选择
  output     [2:0] ImmSrc,     // 立即数扩展方式
  output     [3:0] RegSrc,     // 读寄存器号来源
  output reg [2:0] ALUControl  // ALU 运算控制
);

  // --------------------------------------------------------------------
  // 内部连线 / 寄存器
  // --------------------------------------------------------------------
   reg [12:0] controls;  // 译码表输出的 13 位组合控制信号

  // 由 controls 拆分出的单独控制线。wire 表示纯组合逻辑。
 wire Branch;  // 分支标志 (B / BL 指令)
 wire ALUOp;  // 1=数据处理指令，需要进一步解析 Funct[4:1] 来确定 ALU 运算

  // --------------------------------------------------------------------
  // **** 1. 指令主译码：casex 处理主操作码 + Funct[5:0] ****
  // --------------------------------------------------------------------
  // Verilog-2001 中用 always @* 代替 SystemVerilog always_comb
  always @* begin
    // casex 允许用 “x” 做 don't-care，以适配不同功能位组合
    casex (Op)
      2'b00: begin  // 数据处理 / 移位 指令
        if (Funct[5]) begin  // Funct[5] == 1 → 立即数格式
          // controls = 10'b0000101001;
          // 位序说明：{RegSrc[1:0], ImmSrc[2:0], ALUSrc, MemtoReg,
          //            RegW, MemW, Branch, ALUOp}
          if (Funct[4:1] === 4'b1101) begin
            controls = 13'b0000_011_101000;
          end else begin
            controls = 13'b0000_000_101001;
          end
        end else begin
          if (Funct[4:1] === 4'b0000 && mul) begin  // MUL 指令
            controls = 13'b1101_000_001001;
          end else begin
            if (Funct[4:1] === 4'b1101) begin  // MOV 指令，寄存器
              controls = 13'b0000_100_001000;  // MOV 指令，寄存器格式
            end else begin
              controls = 13'b0000_000_001001;  // 寄存器格式
            end
          end

        end
      end

      2'b01: begin  // 载入 / 存储 指令
        if (Funct[0])  // Funct[0] == 1 → LDR (Load)
          controls = 13'b0000_001_111000;
        else  // STR (Store)
          controls = 13'b0010_001_110100;
      end

      2'b10:  // 分支 (B / BL)
      controls = 13'b0001010100010;

      default: controls = 13'bx;  // 未定义
    endcase
  end

  // --------------------------------------------------------------------
  // **** 2. controls 拆包 —— 直接映射到各条控制线 ****
  // --------------------------------------------------------------------
  assign {RegSrc,  // controls[9:8]
      ImmSrc,  // controls[7:6]
      ALUSrc,  // controls[5]
      MemtoReg,  // controls[4]
      RegW,  // controls[3]
      MemW,  // controls[2]
      Branch,  // controls[1]
      ALUOp}  // controls[0]
      = controls;

  // --------------------------------------------------------------------
  // **** 3. ALU 指令深度译码 & Flag 写入控制 ****
  //      仅当 ALUOp=1 时，才需要根据 Funct[4:1] 判定具体运算 ****
  // --------------------------------------------------------------------
  // ALU 111:B-PASS   
  always @* begin
    if (ALUOp) begin
      // 细分 Funct[4:1] 得到 ALUControl
      case (Funct[4:1])
        4'b0100: ALUControl = 3'b000;  // ADD
        4'b0010: ALUControl = 3'b001;  // SUB
        4'b0000: ALUControl = (mul) ? 3'b111 : 3'b010;  // AND 
        4'b1100: ALUControl = 3'b011;  // ORR
        default: ALUControl = 3'bxxx;  // 未定义
      endcase

      // FlagW[1] → 是否写 N/Z/C/V 中的 N/Z/C/V (S 位)
      FlagW[1] = Funct[0];  // S=1 时写 NZCV
      // FlagW[0] → 仅对 ADD/SUB 运算才写 C/V
      FlagW[0] = Funct[0] & (ALUControl == 3'b000 ||  // ADD
 ALUControl == 3'b001);  // SUB
    end  // 非 ALU 数据处理：无需写 Flag，也不需特殊 ALUControl
    else begin
      if (Funct[4:1] === 4'b1101) begin
        // if (Funct[5]) begin
        ALUControl = 3'b100;  //pass-b
        // end
        FlagW      = 2'b00;  // 不写 NZCV
      end else begin
        ALUControl = 3'b000;  // 默认用 ADD (方便地址/偏移计算)
        FlagW      = 2'b00;  // 不写 NZCV
      end
    end
  end

  // --------------------------------------------------------------------
  // **** 4. PC 写入控制 (PCS) ****
  //      • 若目的寄存器 = R15(1111) 且 RegW=1 → 说明是 MOV/ADD …,PC 指令
  //      • 或  Branch=1 (分支指令)                                          ****
  // --------------------------------------------------------------------
  assign PCS = ((Rd == 4'b1111) & RegW) | Branch;

endmodule
