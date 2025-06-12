//--------------------------------------------------------------------
//  Black & Grey prefix cells
//--------------------------------------------------------------------
module black_cell (
  input  wire gk,
  pk,
  gj,
  pj,
  output wire g_out,
  p_out
);
  assign g_out = gk | (pk & gj);
  assign p_out = pk & pj;
endmodule

module grey_cell (
  input  wire gk,
  pk,
  gj,
  output wire g_out
);
  assign g_out = gk | (pk & gj);
endmodule

//--------------------------------------------------------------------
// 32-bit, 5-level Kogge-Stone prefix adder
//--------------------------------------------------------------------
module ks_adder32 (
  input  wire [31:0] a,
  input  wire [31:0] b,
  input  wire        cin,
  output wire [31:0] sum,
  output wire        cout
);
  //---------------- stage-0 : bit-wise P / G ------------------------
  wire [31:0] p0 = a ^ b;
  wire [31:0] g0 = a & b;

  //--------- five prefix levels : d = 1 /2 /4 /8 /16 ---------------
  wire [31:0] g1, p1, g2, p2, g3, p3, g4, p4, g5, p5;
  genvar i;

  // L1 : distance = 1
  generate
    for (i = 0; i < 32; i = i + 1) begin : L1
      if (i == 0) begin
        assign g1[i] = g0[i];
        assign p1[i] = p0[i];
      end else begin
        black_cell BC (
          g0[i],
          p0[i],
          g0[i-1],
          p0[i-1],
          g1[i],
          p1[i]
        );
      end
    end
  endgenerate

  // L2 : d=2
  generate
    for (i = 0; i < 32; i = i + 1) begin : L2
      if (i < 2) begin
        assign g2[i] = g1[i];
        assign p2[i] = p1[i];
      end else begin
        black_cell BC (
          g1[i],
          p1[i],
          g1[i-2],
          p1[i-2],
          g2[i],
          p2[i]
        );
      end
    end
  endgenerate

  // L3 : d=4
  generate
    for (i = 0; i < 32; i = i + 1) begin : L3
      if (i < 4) begin
        assign g3[i] = g2[i];
        assign p3[i] = p2[i];
      end else begin
        black_cell BC (
          g2[i],
          p2[i],
          g2[i-4],
          p2[i-4],
          g3[i],
          p3[i]
        );
      end
    end
  endgenerate

  // L4 : d=8
  generate
    for (i = 0; i < 32; i = i + 1) begin : L4
      if (i < 8) begin
        assign g4[i] = g3[i];
        assign p4[i] = p3[i];
      end else begin
        black_cell BC (
          g3[i],
          p3[i],
          g3[i-8],
          p3[i-8],
          g4[i],
          p4[i]
        );
      end
    end
  endgenerate

  // L5 : d=16
  generate
    for (i = 0; i < 32; i = i + 1) begin : L5
      if (i < 16) begin
        assign g5[i] = g4[i];
        assign p5[i] = p4[i];
      end else begin
        black_cell BC (
          g4[i],
          p4[i],
          g4[i-16],
          p4[i-16],
          g5[i],
          p5[i]
        );
      end
    end
  endgenerate

  //---------------- carry & sum ------------------------------------
  wire [31:0] c;
  assign c[0] = cin;
  generate
    for (i = 1; i < 32; i = i + 1) begin : CGEN
      grey_cell GC (
        g5[i-1],
        p5[i-1],
        cin,
        c[i]
      );
    end
  endgenerate

  assign sum  = p0 ^ c;  // Si = Pi ^ Ci
  assign cout = g5[31] | (p5[31] & cin);  // Cout
endmodule
