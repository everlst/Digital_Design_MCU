module full_adder (
  input  a,
  b,
  cin,
  output sum,
  cout
);
  wire axorb, aandb, axorbandcin;

  xor (axorb, a, b);
  xor (sum, axorb, cin);
  and (aandb, a, b);
  and (axorbandcin, axorb, cin);
  or (cout, aandb, axorbandcin);
endmodule
