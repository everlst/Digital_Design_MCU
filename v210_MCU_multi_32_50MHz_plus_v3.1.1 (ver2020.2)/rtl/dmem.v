// ============================================================================
//  文件名   : dmem.v
//  模块名   : dmem
// ============================================================================
module dmem (
    input         clk,   // 时钟
    input         we,    // 写使能（高有效）
    input  [31:0] a_0,   // 地址（字节对齐，取高位[31:2] 作索引）
    input  [31:0] wd_0,  // 写入数据
    output [31:0] rd_0,  // 读出数据
    input  [31:0] a_1,   // 地址（字节对齐，取高位[31:2] 作索引）
    input  [31:0] wd_1,  // 写入数据
    output [31:0] rd_1,  // 读出数据
    input  [31:0] a_2,   // 地址（字节对齐，取高位[31:2] 作索引）
    input  [31:0] wd_2,  // 写入数据
    output [31:0] rd_2,  // 读出数据
    input  [31:0] a_3,   // 地址（字节对齐，取高位[31:2] 作索引）
    input  [31:0] wd_3,  // 写入数据
    output [31:0] rd_3,  // 读出数据
    input  [31:0] a_4,   // 地址（字节对齐，取高位[31:2] 作索引）
    input  [31:0] wd_4,  // 写入数据
    output [31:0] rd_4,  // 读出数据
    input  [31:0] a_5,   // 地址（字节对齐，取高位[31:2] 作索引）
    input  [31:0] wd_5,  // 写入数据
    output [31:0] rd_5,  // 读出数据
    input  [31:0] a_6,   // 地址（字节对齐，取高位[31:2] 作索引）
    input  [31:0] wd_6,  // 写入数据
    output [31:0] rd_6,  // 读出数据
    input  [31:0] a_7,   // 地址（字节对齐，取高位[31:2] 作索引）
    input  [31:0] wd_7,  // 写入数据
    output [31:0] rd_7,  // 读出数据

    input ready
);

  reg shijian;

  // --------------------------------------------------------------------
  // 1) 内部存储阵列：64 × 32-bit（可通过修改深度扩展容量）
  // --------------------------------------------------------------------
  reg [31:0] RAM_reg[47:16];
  wire [15:0] rom_data;  // ROM_1 输出数据

  // 为各端口声明输出寄存器
  reg [31:0] mem_data_0;
  reg [31:0] mem_data_1;
  reg [31:0] mem_data_2;
  reg [31:0] mem_data_3;
  reg [31:0] mem_data_4;
  reg [31:0] mem_data_5;
  reg [31:0] mem_data_6;
  reg [31:0] mem_data_7;

  // 优化shijian计算 - 分组计算以减少关键路径长度
  wire [3:0] sum_group1 = RAM_reg[32][0] + RAM_reg[33][0] + RAM_reg[34][0] + RAM_reg[35][0];
  wire [3:0] sum_group2 = RAM_reg[36][0] + RAM_reg[37][0] + RAM_reg[38][0] + RAM_reg[39][0];
  wire [3:0] sum_group3 = RAM_reg[40][0] + RAM_reg[41][0] + RAM_reg[42][0] + RAM_reg[43][0];
  wire [3:0] sum_group4 = RAM_reg[44][0] + RAM_reg[45][0] + RAM_reg[46][0] + RAM_reg[47][0];

  always @(posedge clk) begin
    shijian <= sum_group1 + sum_group2 + sum_group3 + sum_group4;
  end

  // --------------------------------------------------------------------
  // 2) 存储器读取实例
  // --------------------------------------------------------------------
  dist_mem_gen_1 ROM_1 (
      .a  (a_0[5:2]),  // input wire [3 : 0] a
      .spo(rom_data)   // output wire [15 : 0] spo
  );

  // 写入操作 - 只有在写使能有效时执行
  always @(posedge clk) begin
    if (we) begin
      RAM_reg[a_0[8:2]] <= wd_0[15:0];
      RAM_reg[a_1[8:2]] <= wd_1[15:0];
      RAM_reg[a_2[8:2]] <= wd_2[15:0];
      RAM_reg[a_3[8:2]] <= wd_3[15:0];
      RAM_reg[a_4[8:2]] <= wd_4[15:0];
      RAM_reg[a_5[8:2]] <= wd_5[15:0];
      RAM_reg[a_6[8:2]] <= wd_6[15:0];
      RAM_reg[a_7[8:2]] <= wd_7[15:0];
    end
  end

  // --------------------------------------------------------------------
  // 3) 优化读取逻辑 - 分离ROM和RAM的选择路径
  // --------------------------------------------------------------------
  // ROM访问条件预计算
  wire rom_access = (a_0[8:2] <= 8'd60) && (ready == 1'b1);

  // 单独处理每个端口的读取路径
  always @(*) begin
    if (rom_access) begin
      mem_data_0 = {16'b0, rom_data};
    end else begin
      mem_data_0 = {16'b0, RAM_reg[a_0[8:2]][15:0]};
    end
  end

  // 其他端口只从RAM读取
  always @(*) begin
    mem_data_1 = {16'b0, RAM_reg[a_1[8:2]][15:0]};
    mem_data_2 = {16'b0, RAM_reg[a_2[8:2]][15:0]};
    mem_data_3 = {16'b0, RAM_reg[a_3[8:2]][15:0]};
    mem_data_4 = {16'b0, RAM_reg[a_4[8:2]][15:0]};
    mem_data_5 = {16'b0, RAM_reg[a_5[8:2]][15:0]};
    mem_data_6 = {16'b0, RAM_reg[a_6[8:2]][15:0]};
    mem_data_7 = {16'b0, RAM_reg[a_7[8:2]][15:0]};
  end

  // 输出连接到选择后的数据
  assign rd_0 = mem_data_0;
  assign rd_1 = mem_data_1;
  assign rd_2 = mem_data_2;
  assign rd_3 = mem_data_3;
  assign rd_4 = mem_data_4;
  assign rd_5 = mem_data_5;
  assign rd_6 = mem_data_6;
  assign rd_7 = mem_data_7;

endmodule
