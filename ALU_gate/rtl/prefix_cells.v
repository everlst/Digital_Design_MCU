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
