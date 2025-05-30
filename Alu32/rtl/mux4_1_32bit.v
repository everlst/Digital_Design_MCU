module mux4_1_32bit (
  input  [31:0] d0,
  d1,
  d2,
  d3,
  input  [ 1:0] sel,
  output [31:0] y
);
  genvar i;
  generate
    for (i = 0; i < 32; i = i + 1) begin : mux_loop
      mux4_1 m (
        .d0 (d0[i]),
        .d1 (d1[i]),
        .d2 (d2[i]),
        .d3 (d3[i]),
        .sel(sel),
        .y  (y[i])
      );
    end
  endgenerate
endmodule

module mux4_1 (
  input        d0,
  d1,
  d2,
  d3,
  input  [1:0] sel,
  output       y
);
  wire s0n, s1n;
  wire t0, t1, t2, t3;

  not (s0n, sel[0]);
  not (s1n, sel[1]);

  and (t0, d0, s1n, s0n);
  and (t1, d1, s1n, sel[0]);
  and (t2, d2, sel[1], s0n);
  and (t3, d3, sel[1], sel[0]);
  or (y, t0, t1, t2, t3);
endmodule
