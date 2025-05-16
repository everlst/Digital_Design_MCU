// 4-bit BCD → 7-段码（低电平点亮；最高位 seg[7] = DP，本设计保持熄灭）
module bcd7seg (
  input  wire [3:0] bcd,
  output reg  [7:0] seg   // {DP,G,F,E,D,C,B,A}
);
  always @(*) begin
    case (bcd)
      4'd0:    seg = 8'b0000_0011;
      4'd1:    seg = 8'b1001_1111;
      4'd2:    seg = 8'b0010_0101;
      4'd3:    seg = 8'b0000_1101;
      4'd4:    seg = 8'b1001_1001;
      4'd5:    seg = 8'b0100_1001;
      4'd6:    seg = 8'b0100_0001;
      4'd7:    seg = 8'b0001_1111;
      4'd8:    seg = 8'b0000_0001;
      4'd9:    seg = 8'b0000_1001;
      default: seg = 8'b1111_1111;  // 默认情况下保持关闭
    endcase
  end
endmodule
