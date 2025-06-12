// ------------------------------------------------------------------
// ----- controller.v (新) ------------------------------------------
// ------------------------------------------------------------------
// 把原单周期控制器拆简：只在 ID 级译码输出控制总线
// ------------------------------------------------------------------

module controller (
  input  wire [31:0] instr,
  output reg  [ 2:0] aluCtrl,
  output reg         memRead,
  output reg         memWrite,
  output reg         memToReg,
  output reg         regWrite,
  output reg         aluSrc,
  output reg         branch
);
  wire [6:0] opcode = instr[6:0];
  wire [2:0] funct3 = instr[14:12];
  wire [6:0] funct7 = instr[31:25];

  always @(*) begin
    // 默认值
    {aluCtrl, memRead, memWrite, memToReg, regWrite, aluSrc, branch} = 11'b0;
    case (opcode)
      7'b0110011: begin  // R‑type
        regWrite = 1'b1;
        aluSrc   = 1'b0;
        case ({
          funct7[5], funct3
        })
          4'b0000: aluCtrl = 3'b010;  // ADD
          4'b1000: aluCtrl = 3'b110;  // SUB
          4'b0001: aluCtrl = 3'b000;  // SLL
          default: aluCtrl = 3'b010;
        endcase
      end
      7'b0010011: begin  // I‑type arithmetic
        regWrite = 1'b1;
        aluSrc   = 1'b1;
        aluCtrl  = 3'b010;  // ADDI
      end
      7'b0000011: begin  // LW
        regWrite = 1'b1;
        memRead  = 1'b1;
        memToReg = 1'b1;
        aluSrc   = 1'b1;
        aluCtrl  = 3'b010;
      end
      7'b0100011: begin  // SW
        memWrite = 1'b1;
        aluSrc   = 1'b1;
        aluCtrl  = 3'b010;
      end
      7'b1100011: begin  // BEQ
        branch  = 1'b1;
        aluCtrl = 3'b110;  // SUB for compare
      end
      default: begin
      end
    endcase
  end
endmodule
