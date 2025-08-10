// =============================================================================
//  文件名   : decoder.v
//  模块名   : decoder
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

  // 由 controls 拆分出的单独控制线
  wire Branch;  // 分支标志 (B / BL 指令)
  wire ALUOp;  // 1=数据处理指令，需要进一步解析 Funct[4:1] 来确定 ALU 运算

  // 预先计算一些常用条件，减少重复判断
  wire is_mov = (Funct[4:1] == 4'b1101);
  wire is_mul = (Funct[4:1] == 4'b0000) && mul;
  wire is_imm = Funct[5];
  wire is_load = Funct[0];

  // --------------------------------------------------------------------
  // **** 1. 指令主译码：casex 处理主操作码 + Funct[5:0] ****
  // --------------------------------------------------------------------
  always @* begin
    case (Op)
      2'b00: begin  // 数据处理 / 移位 指令
        if (is_imm) begin  // 立即数格式
          // 简化MOV立即数处理
          controls = is_mov ? 13'b0000_011_101000 : 13'b0000_000_101001;
        end else begin
          // 简化特殊指令处理
          if (is_mul) controls = 13'b1101_000_001001;
          else if (is_mov) controls = 13'b0000_100_001000;
          else controls = 13'b0000_000_001001;  // 标准寄存器格式
        end
      end

      2'b01: begin  // 载入 / 存储 指令
        // 直接使用is_load条件变量
        controls = is_load ? 13'b0000_001_111000 : 13'b0010_001_110100;
      end

      2'b10:  // 分支 (B / BL)
      controls = 13'b0101_010_100010;

      default: controls = 13'b0000_000_000000;  // 使用明确的默认值，避免x状态
    endcase
  end

  // --------------------------------------------------------------------
  // **** 2. controls 拆包 —— 直接映射到各条控制线 ****
  // --------------------------------------------------------------------
  assign {RegSrc, ImmSrc, ALUSrc, MemtoReg, RegW, MemW, Branch, ALUOp} = controls;

  // --------------------------------------------------------------------
  // **** 3. ALU 指令深度译码 & Flag 写入控制 ****
  //      仅当 ALUOp=1 时，才需要根据 Funct[4:1] 判定具体运算 ****
  // --------------------------------------------------------------------
  always @* begin
    // 默认值设置，减少不必要的条件判断
    ALUControl = 3'b000;  // 默认ADD
    FlagW      = 2'b00;  // 默认不写标志位

    if (ALUOp) begin
      // 简化ALUControl计算
      case (Funct[4:1])
        4'b0100: ALUControl = 3'b000;  // ADD
        4'b0010: ALUControl = 3'b001;  // SUB
        4'b0000: ALUControl = is_mul ? 3'b111 : 3'b010;  // MUL或AND
        4'b1100: ALUControl = 3'b011;  // ORR
        4'b1101: ALUControl = 3'b100;  // MOV为PASS-B
        default: ALUControl = 3'b000;  // 默认ADD，避免未定义状态
      endcase

      // 标志位写控制 - 简化条件判断
      if (Funct[0]) begin  // S位为1时
        FlagW[1] = 1'b1;  // 总是写N/Z
        // 只有ADD/SUB才写C/V
        FlagW[0] = (ALUControl == 3'b000 || ALUControl == 3'b001);
      end
    end else if (is_mov) begin
      ALUControl = 3'b100;  // PASS-B
    end
  end

  // --------------------------------------------------------------------
  // **** 4. PC 写入控制 (PCS) ****
  //      • 若目的寄存器 = R15(1111) 且 RegW=1 → 说明是 MOV/ADD …,PC 指令
  //      • 或  Branch=1 (分支指令)                                          ****
  // --------------------------------------------------------------------
  assign PCS = ((Rd == 4'b1111) & RegW) | Branch;

endmodule
