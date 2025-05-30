`timescale 1ns / 1ps

module alu32_tb;
  reg [31:0] A, B;
  reg  [ 1:0] ALUOp;
  wire [31:0] Result;
  wire CarryOut, Overflow;

  integer i, j;

  alu32 uut (
    .A       (A),
    .B       (B),
    .ALUOp   (ALUOp),
    .Result  (Result),
    .CarryOut(CarryOut),
    .Overflow(Overflow)
  );

  // Display utility
  task display_result;
    input [8*10:1] op_name;
    begin
      $display("%s: A = %h, B = %h => Result = %h, CarryOut = %b, Overflow = %b", op_name, A, B,
               Result, CarryOut, Overflow);
    end
  endtask

  initial begin
    $display("==== Starting ALU Testbench ====");

    // -----------------------------
    // AND Operation - 4-bit exhaustive
    // -----------------------------
    ALUOp = 2'b00;
    for (i = 0; i < 16; i = i + 1) begin
      for (j = 0; j < 16; j = j + 1) begin
        A = i;
        B = j;
        #1;
        display_result("AND");
      end
    end

    // -----------------------------
    // OR Operation - 4-bit exhaustive
    // -----------------------------
    ALUOp = 2'b01;
    for (i = 0; i < 16; i = i + 1) begin
      for (j = 0; j < 16; j = j + 1) begin
        A = i;
        B = j;
        #1;
        display_result("OR ");
      end
    end

    // -----------------------------
    // ADD Operation - 20+ test cases
    // -----------------------------
    ALUOp = 2'b10;

    A     = 32'd10;
    B     = 32'd20;
    #1;
    display_result("ADD");
    A = 32'd2000000000;
    B = 32'd2000000000;
    #1;
    display_result("ADD");  // Positive overflow
    A = -32'd1;
    B = 32'd1;
    #1;
    display_result("ADD");
    A = -32'd5;
    B = -32'd10;
    #1;
    display_result("ADD");
    A = 32'd0;
    B = 32'd0;
    #1;
    display_result("ADD");
    A = 32'd0;
    B = -32'd1;
    #1;
    display_result("ADD");
    A = -32'd1;
    B = 32'd0;
    #1;
    display_result("ADD");
    A = 32'd1;
    B = -32'd1;
    #1;
    display_result("ADD");
    A = 32'd4294967295;
    B = 32'd1;
    #1;
    display_result("ADD");  // Carry out
    A = 32'd1000;
    B = 32'd2000;
    #1;
    display_result("ADD");
    A = -32'd1000;
    B = 32'd1000;
    #1;
    display_result("ADD");
    A = -32'd1000;
    B = -32'd2000;
    #1;
    display_result("ADD");
    A = 32'd2147483647;
    B = 32'd1;
    #1;
    display_result("ADD");  // signed overflow
    A = -32'd2147483648;
    B = -32'd1;
    #1;
    display_result("ADD");  // signed overflow
    A = 32'd100;
    B = 32'd200;
    #1;
    display_result("ADD");
    A = 32'd123456789;
    B = 32'd987654321;
    #1;
    display_result("ADD");
    A = -32'd2147483600;
    B = -32'd10;
    #1;
    display_result("ADD");
    A = 32'd2147483000;
    B = 32'd700;
    #1;
    display_result("ADD");
    A = -32'd2000000000;
    B = 32'd1000000000;
    #1;
    display_result("ADD");
    A = 32'd1000000000;
    B = -32'd500000000;
    #1;
    display_result("ADD");

    // -----------------------------
    // SUB Operation - 20+ test cases
    // -----------------------------
    ALUOp = 2'b11;

    A     = 32'd10;
    B     = 32'd20;
    #1;
    display_result("SUB");
    A = 32'd20;
    B = 32'd10;
    #1;
    display_result("SUB");
    A = 32'd0;
    B = 32'd1;
    #1;
    display_result("SUB");
    A = 32'd1;
    B = 32'd0;
    #1;
    display_result("SUB");
    A = -32'd1;
    B = 32'd1;
    #1;
    display_result("SUB");
    A = -32'd5;
    B = -32'd10;
    #1;
    display_result("SUB");
    A = -32'd10;
    B = -32'd5;
    #1;
    display_result("SUB");
    A = 32'd1000;
    B = 32'd1000;
    #1;
    display_result("SUB");
    A = 32'd2147483647;
    B = -32'd1;
    #1;
    display_result("SUB");
    A = -32'd2147483648;
    B = 32'd1;
    #1;
    display_result("SUB");
    A = 32'd2000000000;
    B = 32'd1000000000;
    #1;
    display_result("SUB");
    A = 32'd1000000000;
    B = 32'd2000000000;
    #1;
    display_result("SUB");
    A = -32'd500000000;
    B = -32'd1000000000;
    #1;
    display_result("SUB");
    A = -32'd1000000000;
    B = -32'd500000000;
    #1;
    display_result("SUB");
    A = 32'd0;
    B = 32'd0;
    #1;
    display_result("SUB");
    A = -32'd2147483648;
    B = -32'd1;
    #1;
    display_result("SUB");
    A = 32'd2147483647;
    B = 32'd1;
    #1;
    display_result("SUB");
    A = -32'd1000000000;
    B = 32'd1000000000;
    #1;
    display_result("SUB");
    A = 32'd1000000000;
    B = -32'd1000000000;
    #1;
    display_result("SUB");
    A = 32'd123456789;
    B = 32'd98765432;
    #1;
    display_result("SUB");

    $display("==== Testbench Completed ====");
    $stop;
  end
endmodule
