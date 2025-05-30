module rom (
    input wire clk,  // 时钟
    input wire [31:0] imrom_addr,
    output wire [31:0] imrom_out
);
  localparam MEM_SIZE = 256;  // 定义存储器的大小（这里是 256个 32 位
  reg [31:0] mem[0:MEM_SIZE-1];  // 定义存储器
  initial begin
    $readmemh("imdec.coe", mem);
  end  //初始化
  assign imrom_out = mem[imrom_addr];  //组合逻辑的读操作
endmodule
