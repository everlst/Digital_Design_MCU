module TB ();
  reg [31:0] a;
  reg [31:0] b;
  reg [1:0] op;
  wire [31:0] result;
  wire verflow;
  wire carry;
  wire negative;
  wire zero;
  ALU32bit uut (
      .a(a),
      .b(b),
      .op(op),
      .result(result),
      .verflow(verflow),
      .carry(carry),
      .negative(negative),
      .zero(zero)
  );
  initial begin
    a  = 32'hFFFFFFFF;
    b  = 32'h00000001;
    op = 2'b00;
    #200;
    a  = 32'h00000001;
    b  = 32'h00000001;
    op = 2'b00;
    #200;
    a  = 32'h00000000;
    b  = 32'h00000001;
    op = 2'b01;
    #200;
    a  = 32'h00000002;
    b  = 32'h00000001;
    op = 2'b01;
    #200;
    a  = 32'hFFFFFFFF;
    b  = 32'h00000001;
    op = 2'b10;
    #200;
    a  = 32'h00000000;
    b  = 32'h00000001;
    op = 2'b11;
    #200;
    a  = 32'h7FFFFFFF;
    b  = 32'h00000001;
    op = 2'b00;
    #200;
    a  = 32'h7FFFFFFE;
    b  = 32'h00000001;
    op = 2'b00;
    #200;
    a  = 32'h00000000;
    b  = 32'h00000000;
    op = 2'b00;
    #200;
    a  = 32'h80000000;
    b  = 32'h00000000;
    op = 2'b00;
    #200;
    a  = 32'h00000002;
    b  = 32'h00000003;
    op = 2'b10;
    #200;
    a  = 32'hFFFFFFFF;
    b  = 32'h00000002;
    op = 2'b10;
    #200;
    a  = 32'h00000005;
    b  = 32'h00000003;
    op = 2'b11;
  end
endmodule
