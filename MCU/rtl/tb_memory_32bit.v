`timescale 1ns / 1ps
module tb_memory_32bit ();
  localparam CLK_PERIOD = 10;  // 10ns (100 MHz)
  reg         rst_n;
  reg         clk;
  reg  [31:0] address;
  reg         we;
  reg  [31:0] write_data;
  wire [31:0] read_data;
  memory_32bit dut (
      .clk       (clk),
      .address   (address),
      .we        (we),
      .write_data(write_data),
      .read_data (read_data),
      .rst_n     (rst_n)
  );
  always begin
    clk = 0;
    #(CLK_PERIOD / 2);
    clk = 1;
    #(CLK_PERIOD / 2);
  end
  initial begin
    address    = 0;
    we         = 0;
    write_data = 0;
    rst_n      = 0;
    repeat (2) @(posedge clk);
    #50;
    rst_n      = 1;
    address    = 32'h00000000;
    write_data = 32'hDEADBEEF;
    we         = 1;
    @(posedge clk);
    address    = 32'h00000001;
    write_data = 32'h12345678;
    we         = 1;
    @(posedge clk);
    address    = 32'h0000000A;
    write_data = 32'hAABBCCDD;
    we         = 1;
    @(posedge clk);
    address    = 32'h000000FF;
    write_data = 32'hCAFED00D;
    we         = 1;
    @(posedge clk);

    we = 0;
    address = 32'h00000000;
    @(posedge clk);
    address = 32'h00000001;
    @(posedge clk);
    address = 32'h0000000A;
    @(posedge clk);
    address = 32'h000000FF;
    @(posedge clk);
    address = 32'h00000010;
    @(posedge clk);
    address    = 32'h00000050;
    write_data = 32'hF00DF00D;
    we         = 1;
    @(posedge clk);
    we = 0;
    address = 32'h00000050;
    @(posedge clk);
  end
endmodule
