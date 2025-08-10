// ============================================================================
//  文件名 : shifter.v
//  模块名 : shifter
//  功能   : 支持 ARM A32 寄存器移位立即数 (imm5)
//           Instr[6:5] = 00/01/10/11 → LSL/LSR/ASR/ROR
//           特殊规则 (LSR/ASR #0 → 32, ROR #0 视为 passthrough) 已处理。
// ----------------------------------------------------------------------------
module shifter (
    input  wire        if_shift,
    input  wire [31:0] data_in,   // 原始 Rm
    input  wire [ 4:0] shamt,     // imm5
    input  wire [ 1:0] sh_type,   // 00 LSL | 01 LSR | 10 ASR | 11 ROR
    output reg  [31:0] data_out
);
  // 预计算常见条件
  wire is_zero_shamt = (shamt == 5'd0);

  // 预计算各种移位结果，减少逻辑层次
  wire [31:0] lsl_result = data_in << shamt;
  wire [31:0] lsr_result = is_zero_shamt ? 32'd0 : data_in >> shamt;
  wire [31:0] asr_result = is_zero_shamt ? {32{data_in[31]}} : $signed(data_in) >>> shamt;
  wire [31:0] ror_result = is_zero_shamt ? data_in : (data_in >> shamt) | (data_in << (32 - shamt));

  always @* begin
    if (!if_shift) begin
      // 无移位时直接透传
      data_out = data_in;
    end else begin
      // 简化case结构，减少嵌套
      case (sh_type)
        2'b00:   data_out = lsl_result;  // LSL
        2'b01:   data_out = lsr_result;  // LSR
        2'b10:   data_out = asr_result;  // ASR
        2'b11:   data_out = ror_result;  // ROR
        default: data_out = data_in;  // 默认透传而非X值，更利于综合
      endcase
    end
  end
endmodule
