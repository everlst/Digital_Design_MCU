module alu32 (
  input  [31:0] A,
  input  [31:0] B,
  input  [ 1:0] ALUOp,     // 00: AND, 01: OR, 10: ADD, 11: SUB
  output [31:0] Result,
  output        CarryOut,
  output        Overflow
);

  wire [31:0] and_result, or_result, add_result, sub_result;
  wire add_carryout, sub_carryout;
  wire add_overflow, sub_overflow;

  // AND gate logic
  genvar i;
  generate
    for (i = 0; i < 32; i = i + 1) begin : and_loop
      and (and_result[i], A[i], B[i]);
    end
  endgenerate

  // OR gate logic
  generate
    for (i = 0; i < 32; i = i + 1) begin : or_loop
      or (or_result[i], A[i], B[i]);
    end
  endgenerate

  // ADDER (ripple-carry adder)
  wire [31:0] sum;
  wire [31:0] carry;
  assign carry[0] = 0;

  generate
    for (i = 0; i < 32; i = i + 1) begin : add_loop
      full_adder fa (
        .a   (A[i]),
        .b   (B[i]),
        .cin (carry[i]),
        .sum (sum[i]),
        .cout(carry[i+1])
      );
    end
  endgenerate

  assign add_result   = sum;
  assign add_carryout = carry[32];
  assign add_overflow = carry[31] ^ carry[32];

  // SUBTRACTOR (A + ~B + 1)
  wire [31:0] B_inv;
  wire [31:0] diff;
  wire [31:0] carry_sub;
  assign carry_sub[0] = 1;

  generate
    for (i = 0; i < 32; i = i + 1) begin : sub_loop
      not (B_inv[i], B[i]);
      full_adder fa_sub (
        .a   (A[i]),
        .b   (B_inv[i]),
        .cin (carry_sub[i]),
        .sum (diff[i]),
        .cout(carry_sub[i+1])
      );
    end
  endgenerate

  assign sub_result   = diff;
  assign sub_carryout = carry_sub[32];
  assign sub_overflow = carry_sub[31] ^ carry_sub[32];

  // Result MUX
  wire [31:0] r0, r1, r2, r3;
  assign r0 = and_result;
  assign r1 = or_result;
  assign r2 = add_result;
  assign r3 = sub_result;

  mux4_1_32bit mux_result (
    .d0 (r0),
    .d1 (r1),
    .d2 (r2),
    .d3 (r3),
    .sel(ALUOp),
    .y  (Result)
  );

  mux4_1 mux_carryout (
    .d0 (1'b0),
    .d1 (1'b0),
    .d2 (add_carryout),
    .d3 (sub_carryout),
    .sel(ALUOp),
    .y  (CarryOut)
  );

  mux4_1 mux_overflow (
    .d0 (1'b0),
    .d1 (1'b0),
    .d2 (add_overflow),
    .d3 (sub_overflow),
    .sel(ALUOp),
    .y  (Overflow)
  );

endmodule
