module cla4 (
  input  wire [3:0] a,
  b,
  input  wire       cin,
  output wire [3:0] sum,
  output wire       cout,
  output wire       Pgrp,
  Ggrp
);
  wire [3:0] p = a ^ b;
  wire [3:0] g = a & b;

  wire       c1 = g[0] | (p[0] & cin);
  wire       c2 = g[1] | (p[1] & g[0]) | (p[1] & p[0] & cin);
  wire       c3 = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]) | (p[2] & p[1] & p[0] & cin);
  wire       g3 = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]);
  wire       p3 = p[3] & p[2] & p[1] & p[0];

  assign sum  = p ^ {c3, c2, c1, cin};
  assign cout = g3 | (p3 & cin);
  assign Pgrp = p3;
  assign Ggrp = g3;
endmodule
