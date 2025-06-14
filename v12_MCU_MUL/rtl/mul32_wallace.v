// ============================================================================
//  文件名 : mul32_wallace.v   (Verilog-2001)
//  功能   : 32-bit × 32-bit → 64-bit Booth-2 / Wallace 乘法器
//           * 禁止综合优化为 DSP : use_dsp = "no" / hard_block = "off"
//           * 可选 0-3 级流水 (参数 PIPELINE)
//           * 符号位同乘数 a,b，本例实现 **二进制补码有符号乘**
// ============================================================================

module mul32_wallace #(
  parameter PIPELINE = 0  // 0=全组合；1-3=流水级（越大越快）
) (
  input  wire        clk,
  input  wire [31:0] a,
  input  wire [31:0] b,
  output wire [63:0] p
);
  // --------------------------------------------------------------------
  // 1) Booth-2 编码：对 b 取 (b[2i+1], b[2i], b[2i-1]) 形成 17 个部分积
  // --------------------------------------------------------------------
  wire [33:0] pp[0:16];  // 每个 pp 至多 ±2a 左移 (2i)
  genvar i;
  generate
    for (i = 0; i < 17; i = i + 1) begin : booth_encode
      wire [ 2:0] slice = {b[2*i+1], b[2*i], (i == 0 ? 1'b0 : b[2*i-1])};
      reg  [33:0] prod;
      always @* begin
        case (slice)
          3'b001, 3'b010: prod = {a[31], a, 1'b0};  //  +a
          3'b011:         prod = {a, 2'b00};  //  +2a
          3'b100:         prod = -{a, 2'b00};  //  -2a
          3'b101, 3'b110: prod = -{a[31], a, 1'b0};  //  -a
          default:        prod = 34'd0;  //   0
        endcase
      end
      // 左移 2*i 位
      assign pp[i] = prod << (2 * i);
    end
  endgenerate

  // --------------------------------------------------------------------
  // 2) Wallace Tree 34→2 (Carry-Save Adder 层次化消溢)
  // --------------------------------------------------------------------
  // 第 0 层：17→6
  wire [63:0] s0[0:5], c0[0:5];
  generate
    for (i = 0; i < 6; i = i + 1) begin : w0
      wire [63:0] x = {{30{pp[3*i][33]}}, pp[3*i]};  // sign-extend
      wire [63:0] y = {{30{pp[3*i+1][33]}}, pp[3*i+1]};
      wire [63:0] z = {{30{pp[3*i+2][33]}}, pp[3*i+2]};
      assign {c0[i], s0[i]} = x ^ y ^ z;  // CSA: sum = xor, carry = majority
    end
  endgenerate
  // 第 1 层：6→2
  wire [63:0] s1[0:1], c1[0:1];
  generate
    for (i = 0; i < 2; i = i + 1) begin : w1
      assign {c1[i], s1[i]} = s0[3*i] ^ s0[3*i+1] ^ s0[3*i+2] ^
                                    (c0[3*i] << 1) ^ (c0[3*i+1] << 1) ^ (c0[3*i+2] << 1);
    end
  endgenerate
  // 第 2 层：2→1 (提前转至 CLA 加法)
  wire [63:0] cs = s1[0] ^ s1[1] ^ (c1[0] << 1) ^ (c1[1] << 1);
  wire [63:0] cc  = (s1[0] & s1[1]) | (s1[0] & (c1[0] << 1)) |
                      (s1[1] & (c1[0] << 1)) | (s1[0] & (c1[1] << 1)) |
                      (s1[1] & (c1[1] << 1)) | ((c1[0] << 1) & (c1[1] << 1));

  // --------------------------------------------------------------------
  // 3) 可选流水级寄存
  // --------------------------------------------------------------------
  wire [63:0] s_pipe[0:PIPELINE];
  assign s_pipe[0] = cs;
  wire [63:0] c_pipe[0:PIPELINE];
  assign c_pipe[0] = cc;

  genvar k;
  generate
    for (k = 0; k < PIPELINE; k = k + 1) begin : regs
      reg [63:0] sr, cr;
      always @(posedge clk) begin
        sr <= s_pipe[k];
        cr <= c_pipe[k];
      end
      assign s_pipe[k+1] = sr;
      assign c_pipe[k+1] = cr;
    end
  endgenerate

  // --------------------------------------------------------------------
  // 4) 末级 64-bit Carry Look-Ahead / Ripple 加法
  // --------------------------------------------------------------------
  assign p = s_pipe[PIPELINE] + c_pipe[PIPELINE];

endmodule
