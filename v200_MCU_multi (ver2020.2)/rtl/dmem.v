// ============================================================================
//  文件名   : dmem.v
//  模块名   : dmem
// ============================================================================
 module dmem (
  input         clk,  // 时钟
  input         we,   // 写使能（高有效）
  input  [31:0] a_0,    // 地址（字节对齐，取高位[31:2] 作索引）
  input  [31:0] wd_0,   // 写入数据
  output [31:0] rd_0,    // 读出数据
  input  [31:0] a_1,    // 地址（字节对齐，取高位[31:2] 作索引）
  input  [31:0] wd_1,   // 写入数据
  output [31:0] rd_1,    // 读出数据
  input  [31:0] a_2,    // 地址（字节对齐，取高位[31:2] 作索引）
  input  [31:0] wd_2,   // 写入数据
  output [31:0] rd_2,    // 读出数据
  input  [31:0] a_3,    // 地址（字节对齐，取高位[31:2] 作索引）
  input  [31:0] wd_3,   // 写入数据
  output [31:0] rd_3,    // 读出数据
  input  [31:0] a_4,    // 地址（字节对齐，取高位[31:2] 作索引）
  input  [31:0] wd_4,   // 写入数据
  output [31:0] rd_4,    // 读出数据
  input  [31:0] a_5,    // 地址（字节对齐，取高位[31:2] 作索引）
  input  [31:0] wd_5,   // 写入数据
  output [31:0] rd_5,    // 读出数据
  input  [31:0] a_6,    // 地址（字节对齐，取高位[31:2] 作索引）
  input  [31:0] wd_6,   // 写入数据
  output [31:0] rd_6,    // 读出数据
  input  [31:0] a_7,    // 地址（字节对齐，取高位[31:2] 作索引）
  input  [31:0] wd_7,   // 写入数据
  output [31:0] rd_7,     // 读出数据

  input ready
);

  reg shijian;


  // --------------------------------------------------------------------
  // 1) 内部存储阵列：64 × 32-bit（可通过修改深度扩展容量）
  // --------------------------------------------------------------------
 reg [15:0] RAM_reg [47:16];
 wire [15:0] rom_data;  // ROM_1 输出数据
 reg  [31:0] mem_data_0;  // 最终选择的数据
 reg  [31:0] mem_data_1;  // 最终选择的数据
 reg  [31:0] mem_data_2;  // 最终选择的数据
 reg  [31:0] mem_data_3;  // 最终选择的数据
 reg  [31:0] mem_data_4;  // 最终选择的数据 
 reg  [31:0] mem_data_5;  // 最终选择的数据
 reg  [31:0] mem_data_6;  // 最终选择的数据
 reg  [31:0] mem_data_7;  // 最终选择的数据

  always @(posedge clk) begin
    shijian <= RAM_reg[32][0] + RAM_reg[33][0] + RAM_reg[34][0] + RAM_reg[35][0]+RAM_reg[36][0] + RAM_reg[37][0] + RAM_reg[38][0] + RAM_reg[39][0]+RAM_reg[40][0] + RAM_reg[41][0] + RAM_reg[42][0] + RAM_reg[43][0]+RAM_reg[44][0] + RAM_reg[45][0] + RAM_reg[46][0] + RAM_reg[47][0];
  end
  // // 行为级仿真初始化
  // initial begin
  //   $readmemh("FFT_input.mem", RAM);  // 每行一字（16-bit）
  // end

  // --------------------------------------------------------------------
  // 2) 存储器读取实例
  // --------------------------------------------------------------------
  dist_mem_gen_1 ROM_1 (
    .a  (a_0[4:1]),   // input wire [3 : 0] a
    .spo(rom_data)  // output wire [15 : 0] spo
  );

  always @(posedge clk) begin
    if(we)begin
      RAM_reg[a_0[6:1]] <= wd_0[15:0];  // 写入RAM
      RAM_reg[a_1[6:1]] <= wd_1[15:0];  // 写入RAM
      RAM_reg[a_2[6:1]] <= wd_2[15:0];  // 写入RAM
      RAM_reg[a_3[6:1]] <= wd_3[15:0];  // 写入RAM
      RAM_reg[a_4[6:1]] <= wd_4[15:0];  // 写入RAM
      RAM_reg[a_5[6:1]] <= wd_5[15:0];  // 写入RAM
      RAM_reg[a_6[6:1]] <= wd_6[15:0];  // 写入RAM
      RAM_reg[a_7[6:1]] <= wd_7[15:0];  // 写入RAM
    end 
  end

  // --------------------------------------------------------------------
  // 3) 根据地址范围选择读取源
  // --------------------------------------------------------------------
  always @(*) begin
    if (a_0[8:1] <= 8'd15 && ready == 1'b1) begin
      mem_data_0 = {16'b0, rom_data};
      mem_data_1 = {32'b0};
      mem_data_2 = {32'b0};
      mem_data_3 = {32'b0};
      mem_data_4 = {32'b0};
      mem_data_5 = {32'b0};
      mem_data_6 = {32'b0};
      mem_data_7 = {32'b0};
    end else begin
      mem_data_0 = {16'b0, RAM_reg[a_0[6:1]]}; 
      mem_data_1 = {16'b0, RAM_reg[a_1[6:1]]}; 
      mem_data_2 = {16'b0, RAM_reg[a_2[6:1]]}; 
      mem_data_3 = {16'b0, RAM_reg[a_3[6:1]]}; 
      mem_data_4 = {16'b0, RAM_reg[a_4[6:1]]}; 
      mem_data_5 = {16'b0, RAM_reg[a_5[6:1]]}; 
      mem_data_6 = {16'b0, RAM_reg[a_6[6:1]]}; 
      mem_data_7 = {16'b0, RAM_reg[a_7[6:1]]}; 
    end
  end

  // 输出连接到选择后的数据
  assign rd_0 = mem_data_0;
  assign rd_1 = mem_data_1;  // 同样的逻辑应用于其他端口
  assign rd_2 = mem_data_2;
  assign rd_3 = mem_data_3;
  assign rd_4 = mem_data_4;
  assign rd_5 = mem_data_5;
  assign rd_6 = mem_data_6;
  assign rd_7 = mem_data_7;

endmodule
