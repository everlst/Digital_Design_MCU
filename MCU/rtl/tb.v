`timescale 1ns / 1ps
module tb ();
  localparam CLK_PERIOD = 10;  // 10ns (100 MHz)
  reg clk;
  reg rst;
  wire [31:0] write_data;
  wire [31:0] data_adr;
  wire memwrite;
  scm_mcu scm_mcu_uut (
      .clk(clk),
      .rst(rst),
      .write_data_dm(write_data),
      .A_dm(data_adr),
      .we_dm(memwrite)
  );
  always begin
    clk = 0;
    #(CLK_PERIOD / 2);
    clk = 1;
    #(CLK_PERIOD / 2);
  end
  initial begin
    rst = 0;
    #30;
    rst = 1;
  end
  always @(negedge clk) begin
    if (memwrite) begin
      if (data_adr[2:0] == 3'b100 & write_data == 32'h7) begin
        $display("succeed");
        $stop;
      end
    end
  end
endmodule
