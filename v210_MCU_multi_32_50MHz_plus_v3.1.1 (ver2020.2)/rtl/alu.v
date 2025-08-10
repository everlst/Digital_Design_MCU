module alu (
    input  wire        clk,         // 新增：给乘法器流水用
    input  wire [31:0] a,
    input  wire [31:0] b,
    input  wire [ 2:0] ALUControl,  // 000=ADD 001=SUB 010=AND 011=OR 111=MUL
    output wire [31:0] Result,
    output wire [ 3:0] ALUFlags
);

  //------------------------------------------------------------------
  // 乘法器实例（使用IP核，16位×16位，输出32位）
  //------------------------------------------------------------------
  wire [31:0] MUL_Result;  // 乘法结果

  mult_gen_0 mul (
      .A(a[15:0]),    // input wire [15 : 0] A
      .B(b[15:0]),    // input wire [15 : 0] B
      .P(MUL_Result)  // output wire [31 : 0] P
  );

  //------------------------------------------------------------------
  // 各种运算结果的预计算 - 并行计算减少关键路径
  //------------------------------------------------------------------
  // ADD/SUB 共用加法器 - 修改逻辑减少进位链
  wire cin = ALUControl[0];
  wire [31:0] b_mod = ALUControl[0] ? ~b : b;
  wire [31:0] sum = a + b_mod + cin;

  // 位运算结果
  wire [31:0] and_result = a & b;
  wire [31:0] or_result = a | b;
  wire [31:0] b_pass = b;

  // 结果多路选择器 - 使用线网代替always块
  reg [31:0] result_reg;

  always @* begin
    case (ALUControl[2:0])
      3'b000, 3'b001: result_reg = sum;  // ADD/SUB
      3'b010:         result_reg = and_result;  // AND
      3'b011:         result_reg = or_result;  // OR
      3'b111:         result_reg = MUL_Result;  // MUL
      3'b100:         result_reg = b_pass;  // B-PASS
      default:        result_reg = 32'b0;  // 默认值0而非X，便于综合
    endcase
  end

  assign Result = result_reg;

  //------------------------------------------------------------------
  // 标志位计算优化 - 拆分为单独的计算路径以减少关键路径延迟
  //------------------------------------------------------------------
  // 负标志 (N)
  wire neg = result_reg[31];

  // 零标志 (Z) - 优化零检测逻辑
  wire zero = ~|result_reg;

  // 进位标志 (C) - 只在ADD/SUB操作时有效
  wire carry_add = (~ALUControl[1]) & (~ALUControl[2]) & 
                  ((~ALUControl[0] & ((a[31] & b[31]) | ((a[31] | b[31]) & ~sum[31]))) |
                   (ALUControl[0] & ((a[31] & ~b[31]) | ((a[31] | ~b[31]) & ~sum[31]))));

  // 溢出标志 (V) - 只在ADD/SUB操作时有效
  wire overflow_add = (~ALUControl[1]) & (~ALUControl[2]) & 
                      ((~ALUControl[0] & ((a[31] & b[31] & ~sum[31]) | (~a[31] & ~b[31] & sum[31]))) |
                       (ALUControl[0] & ((a[31] & ~b[31] & ~sum[31]) | (~a[31] & b[31] & sum[31]))));

  // 标志位组合
  assign ALUFlags = {neg, zero, carry_add, overflow_add};

endmodule
