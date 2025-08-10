(*DONT_TOUCH="YES"*) module alu (
  input  wire        clk,         // 新增：给乘法器流水用
  input  wire [31:0] a,
  input  wire [31:0] b,
  input  wire [ 2:0] ALUControl,  // 000=ADD 001=SUB 010=AND 011=OR 111=MUL
  output reg  [31:0] Result,
  output wire [ 3:0] ALUFlags
);

  //------------------------------------------------------------------
  // 乘法器实例（64-bit 输出，取低 32 位；若需饱和/截断自行更改）
  //------------------------------------------------------------------
  // wire [63:0] mul_p;
  // mul32_wallace #(
  //   .PIPELINE(0)
  // ) u_mul (
  //   .clk(clk),
  //   .a  (a),
  //   .b  (b),
  //   .p  (mul_p)
  // );

  (*DONT_TOUCH="YES"*) wire [31:0] MUL_Result;  // 乘法结果

  mult_gen_0 mul (
    .A(a[15:0]),          // input wire [31 : 0] A
    .B(b[15:0]),          // input wire [31 : 0] B
    .P(MUL_Result)  // output wire [63 : 0] P
  );

  //------------------------------------------------------------------
  // ADD / SUB 共用加法器
  //------------------------------------------------------------------
  (*DONT_TOUCH="YES"*) wire [31:0] addb = ALUControl[0] ? ~b : b;
  (*DONT_TOUCH="YES"*) wire [32:0] sum_33 = {a[31], a} + {addb[31], addb} + ALUControl[0];

  //------------------------------------------------------------------
  // 结果多路选择
  //------------------------------------------------------------------
  always @* begin
    case (ALUControl)
      3'b000, 3'b001: Result = sum_33[31:0];  // ADD / SUB
      3'b010:         Result = a & b;  // AND
      3'b011:         Result = a | b;  // ORR
      // 3'b111:         Result = mul_p[31:0];  // MUL (低 32 位)
      3'b111:         Result = MUL_Result[31:0];  // MUL (低 32 位)
      3'b100:         Result = b;  // B-PASS
      default:        Result = 32'hXXXX_XXXX;
    endcase
  end

  //------------------------------------------------------------------
  // Flags （MUL 不更新 C/V；N/Z 正常）
  //------------------------------------------------------------------
  (*DONT_TOUCH="YES"*) wire neg = Result[31];
  (*DONT_TOUCH="YES"*) wire zero = (Result == 32'b0);
  (*DONT_TOUCH="YES"*) wire carry = (ALUControl[1:0] == 2'b00) ? sum_33[32] : 1'b0;
  (*DONT_TOUCH="YES"*) wire overflow = (ALUControl[1:0]==2'b00) ?
                     ~(a[31]^b[31]^ALUControl[0]) & (a[31]^sum_33[31]) : 1'b0;

  assign ALUFlags = {neg, zero, carry, overflow};

endmodule
