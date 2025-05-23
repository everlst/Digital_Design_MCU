`timescale 1ns / 1ps

module tb_bit8_adder;

  // bit8_adder Parameters
  parameter PERIOD = 10;
  parameter WIDTH = 8;

  // bit8_adder Inputs
  reg  [WIDTH-1:0] a = 0;
  reg  [WIDTH-1:0] b = 0;
  reg              cin = 0;

  // bit8_adder Outputs
  wire [  WIDTH:0] sum;
  wire             cout;

  initial begin
    // Initialize Inputs
    a   = 8'b00001000;
    b   = 8'b00011000;
    cin = 1'b0;

    // Wait 100 ns for global reset to finish
    #100;

    // Add stimulus here
    a   = 8'b11111111;
    b   = 8'b11111111;
    cin = 1'b0;

    #100;

    a   = 8'b10101010;
    b   = 8'b01010101;
    cin = 1'b1;

    #100;
  end

  bit8_adder #(
    .WIDTH(WIDTH)
  ) u_bit8_adder (
    .a  (a[WIDTH-1:0]),
    .b  (b[WIDTH-1:0]),
    .cin(cin),

    .sum (sum[WIDTH:0]),
    .cout(cout)
  );



endmodule
