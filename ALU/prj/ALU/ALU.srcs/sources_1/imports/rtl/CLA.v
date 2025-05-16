`timescale 1ns / 1ps
module carry_lookahead_adder_32bit (
    input [31:0] a,
    input [31:0] b,
    input cin,
    output  [31:0] sum,
    output cout
);

  // 定义进位输出信号
  reg [7:0] c_out;

  // 4 位加法器实例�?
  generate
    genvar i;
    for (i = 0; i < 8; i = i + 1) begin : cla4bit_gen
      cla4bit cla4bit_inst (
          .a(a[i*4+:4]),
          .b(b[i*4+:4]),
          .cin(i == 0 ? cin : c_out[i-1]),
          .s(sum[i*4+:4]),
          .cout(c_out[i])
      );
    end
  endgenerate

  // �?终进位输�?
  assign cout = c_out[7];

endmodule
