`timescale 1ns / 1ps
module FA (
    input  a,
    b,
    c_in,
    output sum,
    c_out
);
  assign sum = a ^ b ^ c_in;
  assign c_out = (a & b) | (a & c_in) | (b & c_in);
endmodule