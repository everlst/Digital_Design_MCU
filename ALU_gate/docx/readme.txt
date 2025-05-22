module pre_adder_32 (
  input  wire [31:0] a,
  input  wire [31:0] b,
  input  wire        cin,  //前置进位
  output wire [31:0] s,
  output wire        cout
);