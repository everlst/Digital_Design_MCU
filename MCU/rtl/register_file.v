module register_file (
    input  wire        clk,  // 时钟
    input  wire        rst,  // 复位信号，低电平有效
    input  wire [ 3:0] A1,   // 读地址1
    input  wire [ 3:0] A2,   // 读地址2
    output wire [31:0] RD1,  // 读数据1
    output wire [31:0] RD2,  // 读数据2
    input  wire [ 3:0] A3,   // 写地址
    input  wire [31:0] WD3,  // 写数据
    input  wire        WE,   // 写使能，高电平有效
    input  wire [31:0] R15   //R15寄存器特殊写入
);

  // 声明16个32位寄存器
  reg [31:0] registers[15:0];
  wire rst_n;
  assign rst_n = ~rst;
  integer i;
  // --- 寄存器写操作 ---
  always @(posedge clk or posedge rst_n) begin
    if (rst_n) begin
      // 复位时，所有寄存器清零
      for (i = 0; i < 16; i = i + 1) begin
        registers[i] <= 32'b0;
      end
    end else begin
      registers[15] <= R15;
      if (WE) begin
        // 写使能高时，将WD3写入A3指定的寄存器
        registers[A3] <= WD3;
      end
    end
  end

  // --- 寄存器读操作 ---
  // 读操作是组合逻辑，直接根据地址输出相应寄存器的内容
  assign RD1 = (WE && A1 == A3) ? WD3 : (A1 == 4'b1111) ? R15 : registers[A1];
  assign RD2 = (WE && A2 == A3) ? WD3 : (A2 == 4'b1111) ? R15 : registers[A2];

endmodule
