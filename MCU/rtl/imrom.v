module imrom (
    input wire clk,  // 时钟
    input  wire [31:0] imrom_addr,   // 32位地�?输入（虽然ROM深度可能小于2^32，但端口可以连接32位）
    output wire [31:0] imrom_out  // 32位数据输�?
);

  // ***************************************************************
  // ** 方法�?：�?�过Vivado IP核的 .coe 文件进行初始�? (推荐方式) **
  // ***************************************************************
  // 假设你已经在Vivado中配置并生成了ROM IP核，名称�? 'rom_ip_inst'
  // 并且在配置时指定�? .coe 文件进行初始化�??
  // 这里我们将实例化这个生成的IP核�??

  // 假设你的ROM深度�? 1024 (即地�?范围�? 0 �? 1023)  wire [9:0] actual_rom_addr;
  //assign actual_rom_addr = imrom_addr[9:0];  // 使用地址的低10�?

  // 实例化Vivado生成的ROM IP�?
  // 这里的端口名称和位宽�?要与你在Vivado中配置的IP核的实际端口匹配
  // 你可以在Vivado中右键点击生成的IP核，选择 'Open IP Example Design'
  // �? 'Instantiate Template' 来获取准确的实例化模板�??
  rom_ip_inst u_rom_ip_inst (
      .clka (clk),              // 时钟输入
      .addra(imrom_addr),  // 读地�?输入
      .douta(imrom_out)         // 数据输出
  );

  // ***************************************************************
  // ** 方法二：直接在Verilog代码中初始化 (仅�?�用于小型ROM，不推荐用于大ROM) **
  // ** 注意：这种方法不会使用Vivado的ROM IP核，而是综合成LUT或Block RAM **
  // ** 根据综合器的判断，�?�常不建议用于大型存储器的初始化�? **
  // 声明�?个RAM，用于存储ROM数据
  // 注意：这�? `rom_memory` 在综合时可能会被推断为LUTs或Block RAM�?
  // 具体取决于其大小和FPGA资源�?
  //reg [31:0] rom_memory [0:1023]; // 1024�?32位数�?

  //initial begin
  // 这里可以直接在Verilog代码中初始化ROM内容
  // 这种方式适合ROM内容比较固定且数据量不大的情�?
  // rom_memory[0]   = 32'h0000_0001;
  // rom_memory[1]   = 32'h0000_0002;
  // rom_memory[2]   = 32'h0000_0003;
  // ... 继续添加更多数据
  //  rom_memory[1023] = 32'hFFFF_FFFF;
  //  end

  // 组合逻辑读取ROM数据
  // 注意：这里没有时钟，�?以读出是组合逻辑，`rom_data_out` 是组合输出�??
  //assign imrom_out = rom_memory[rom_addr[9:0]]; // 使用�?10位地�?


endmodule
