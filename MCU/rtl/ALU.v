`timescale 1ns / 1ps
module ALU32bit (
    input  [31:0] a,
    input  [31:0] b,
    input  [ 1:0] op,
    output [31:0] result,
    output [ 3:0] ALUFlags
);
  wire verflow;
  wire carry;
  wire negative;
  wire zero;
  wire [31:0] feib;
  wire [31:0] pre_result;
  wire cout;
  wire [31:0] y;
  wire cin;
  assign cin = op[0];
  mux_1to1_32bit mux_1to1_32bit_inst (
      .a  (b),
      .sel(cin),
      .y  (feib)
  );
  //carry_lookahead_adder_32bit carry_lookahead_adder_32bit_inst (
  ripple_carry_adder_32bit ripple_carry_adder_32bit_inst (
      .a(a),
      .b(feib),
      .cin(cin),
      .sum(pre_result),
      .cout(cout)
  );
  mux_4to1_32bit mux_4to1_32bit_inst (
      .a  (a),
      .b  (b),
      .c  (pre_result),
      .sel(op),
      .y  (result)
  );
  assign verflow = (~op[1]) & (a[31] ^ result[31]) & (~(op[0] ^ a[31] ^ b[31]));
  assign carry = (~op[1]) & cout;
  assign negative = result[31];
  assign zero=(~result[0])&(~result[1])&(~result[2])&(~result[3])&(~result[4])&(~result[5])&(~result[6])&(~result[7])&(~result[8])&(~result[9])&(~result[10])&(~result[11])&(~result[12])&(~result[13])&(~result[14])&(~result[15])&(~result[16])&(~result[17])&(~result[18])&(~result[19])&(~result[20])&(~result[21])&(~result[22])&(~result[23])&(~result[24])&(~result[25])&(~result[26])&(~result[27])&(~result[28])&(~result[29])&(~result[30])&(~result[31]);
  assign ALUFlags[3] = negative;
  assign ALUFlags[2] = zero;
  assign ALUFlags[1] = carry;
  assign ALUFlags[0] = verflow;
endmodule
