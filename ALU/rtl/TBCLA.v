module TBCLA ();
  reg [31:0] a;
  reg [31:0] b;
  reg c_in;
  wire [31:0] sum;
  wire c_out;
  carry_lookahead_adder_32bit uut (
      .a(a),
      .b(b),
      .c_in(c_in),
      .sum(sum),
      .c_out(c_out)
  );
  initial begin
    a = 32'hFFFFFFFF;
    b = 32'h00000001;
    c_in = 1;
    #50;
    a = 32'h00000001;
    b = 32'h00000001;
    c_in = 1;
    #50;
    a = 32'h00000000;
    b = 32'h00000001;
    c_in = 1;
    #50;
    a = 32'h00000002;
    b = 32'h00000001;
    c_in = 1;
    #50;
    a = 32'hFFFFFFFF;
    b = 32'h00000001;
    c_in = 0;
    #50;
    a = 32'h00000000;
    b = 32'h00000001;
    c_in = 1;
    #50;
    a = 32'h7FFFFFFF;
    b = 32'h00000001;
    c_in = 0;
    #50;
    a = 32'h7FFFFFFE;
    b = 32'h00000001;
    c_in = 0;
    #50;
    a = 32'h00000005;
    b = 32'h00000003;
    c_in = 1;
  end
endmodule
