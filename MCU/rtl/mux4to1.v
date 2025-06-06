module mux4to1 (
    input [31:0] a,
    input [31:0] b,
    input [31:0] c,
    input [31:0] d,
    input [1:0] sel,
    output reg [31:0] y
);
  always @(*) begin
    case (sel)
      2'b00:   y = a;  //00输出a
      2'b01:   y = b;  //01输出b
      2'b10:   y = c;  //10输出c
      2'b11:   y = d;  //11输出d
      default: y = 32'b0;
    endcase
  end
endmodule
