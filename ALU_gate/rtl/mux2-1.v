module mux2_1 (
  input  wire [31:0] a,
  input              sel,
  output wire [31:0] y
);

  genvar i;
  generate
    for (i = 0; i < 32; i = i + 1) begin : each_bit
      assign y[i] = a[i] ^ sel;
    end
  endgenerate

endmodule
