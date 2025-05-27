module memory_32bit (
    input clk,  // 时钟信号
    input [31:0] address,  // 32 位地址输入
    input rst_n,  // 复位信号，低电平有效
    input we,  // 写使能信高有效
    input [31:0] write_data,  // 写入数据
    output wire [31:0] read_data  // 32 位读出数据
);

  localparam MEM_SIZE = 256;  // 定义存储器的大小（这里是 256个 32 位
  reg [31:0] mem[0:MEM_SIZE-1];  // 定义存储器
  integer i;
  // --- 存储器写操作和复位 ---
  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      //复位时，将所有存储器位置初始化为0  
      for (i = 0; i < MEM_SIZE; i = i + 1) begin
        mem[i] = 32'h00000000;  // 初始化为0
      end
      // 可以根据需要添加更多的特定地址初始化，例如：
      // 地址 0x10 初始化为 0xFFFFFFFF
      // mem[32'h00000010] <= 32'h0000FFFF;
    end else begin
      // 在时钟上升沿且写使能为高时进行写操作
      if (we) begin
        mem[address] <= write_data;
      end
    end
  end

  // --- 存储器读操作 (组合逻辑) ---
  // 读数据会立即反映地址对应的存储器内容
  // 如果在写操作发生时，读地址和写地址相同，则读出的是新写入的数据
  assign read_data = (we && address == address) ? write_data : mem[address];
endmodule
