// ============================================================================
//  文件名 : shifter.v
//  模块名 : shifter
//  功能   : 支持 ARM A32 寄存器移位立即数 (imm5)
//           Instr[6:5] = 00/01/10/11 → LSL/LSR/ASR/ROR
//           特殊规则 (LSR/ASR #0 → 32, ROR #0 视为 passthrough) 已处理。
// ----------------------------------------------------------------------------
(* dont_touch = "true" *) module shifter (
  input  wire        if_shift,
  input  wire [31:0] data_in,   // 原始 Rm
  input  wire [ 4:0] shamt,     // imm5
  input  wire [ 1:0] sh_type,   // 00 LSL | 01 LSR | 10 ASR | 11 ROR
  output reg  [31:0] data_out
);
  always @* begin
    if (if_shift) begin
      case (sh_type)
        2'b00: begin  // LSL
          data_out = data_in << shamt;  // shamt==0 时自动透传
        end
        2'b01: begin  // LSR (0 ⇒ 32)
          if (shamt == 5'd0) data_out = 32'h0000_0000;
          else data_out = data_in >> shamt;
        end
        2'b10: begin  // ASR (0 ⇒ 32)
          if (shamt == 5'd0) data_out = {32{data_in[31]}};
          else data_out = $signed(data_in) >>> shamt;
        end
        2'b11: begin  // ROR (0 = no shift / treat as passthrough)
          if (shamt == 5'd0) data_out = data_in;  // 可扩展为 RRX
          else data_out = (data_in >> shamt) | (data_in << (32 - shamt));
        end
        default: data_out = 32'hXXXX_XXXX;
      endcase
    end else begin
      data_out = data_in;  // 无移位时直接透传
    end

  end
endmodule
