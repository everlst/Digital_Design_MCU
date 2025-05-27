//依照书上第七章的单周期微结构写的
module scm_mcu (
    input clk,
    input rst
);
  wire [31:0] read_data_im;  //为指令存储器部分声明对应变量

  wire [31:0] pc;
  reg  [31:0] pc_registers;  //为程序计数器声明对应变量

  wire [31:0] constpc;
  wire [31:0] pc_4;
  assign constpc = 32'h00000004;
  wire cinpc;
  assign cinpc = 0;
  wire coutpc4;  //为pc+4加法器声明变量

  wire coutpc8;
  wire [31:0] pc_8;  //为pc+8加法器声明变量

  always @(posedge clk) begin
    pc_registers <= pc;
  end  //程序计数器对应程序

  wire [3:0] A1;
  wire [31:0] RD1;
  wire WE3;
  wire [3:0] A2;
  wire [31:0] RD2;
  wire [3:0] A3;
  assign A3[3:0] = read_data_im[15:12];
  wire [31:0] R15;
  assign R15 = pc_8;  //为寄存器文件部分声明对应变量

  wire [31:0] extlmm;
  wire [31:0] extlmm00;
  wire [31:0] extlmm01;
  wire [31:0] extlmm10;
  wire [31:0] extlmm11;
  wire [ 1:0] sel_imm;
  assign extlmm01[31:12] = 20'b0;
  assign extlmm01[11:0] = read_data_im[11:0];
  assign extlmm00[32:8] = 24'b0;
  assign extlmm00[7:0] = read_data_im[7:0];
  assign extlmm10[25:2] = read_data_im[23:0];
  assign extlmm10[1:0] = 2'b00;
  assign extlmm10[26] = read_data_im[23];
  assign extlmm10[31] = read_data_im[23];
  assign extlmm10[30] = read_data_im[23];
  assign extlmm10[29] = read_data_im[23];
  assign extlmm10[28] = read_data_im[23];
  assign extlmm10[27] = read_data_im[23];
  assign extlmm11 = 32'b0;  //立即零扩展变量声明

  wire [31:0] srcA;
  wire [31:0] srcB;
  wire [ 1:0] ALUControl;
  wire [31:0] ALUResult;
  wire [ 3:0] ALUFlags;
  assign srcA = RD1;  //ALU部分声明对应变量

  wire [31:0] A_dm;
  assign A_dm = ALUResult;
  wire we_dm;
  wire [31:0] write_data_dm;
  assign write_data_dm = RD2;
  wire [31:0] read_data_dm;  //数据存储器部分声明对应变量

  wire sel_pc;  //定义pc二选一op码

  wire sel_A2;
  wire [3:0] RA2;
  assign RA2[3:0] = read_data_im[3:0];  //声明A2二选一所需的变量

  wire sel_result;
  wire [31:0] result;  //声明result二选一选择器所需变量

  wire sel_srcB;  //声明srcB二选一选择器所需变量

  wire sel_A1;
  wire [3:0] RA1;
  assign RA1 = 4'b1111;  //声明A1二选一所需的变量

  wire [3:0] cond;
  wire [1:0] op;
  wire [5:0] funct;
  wire [3:0] rd;
  assign cond[3:0] = read_data_im[31:28];
  assign op[1:0] = read_data_im[27:26];
  assign funct[5:0] = read_data_im[25:20];
  assign rd[3:0] = read_data_im[15:12];
  wire [1:0] regsrc;
  assign sel_A1 = regsrc[0];
  assign sel_A2 = regsrc[1];  //声明控制单元的对应变量

  imrom imrom_uut (
      .clk(clk),
      .imrom_addr(pc_registers),
      .imrom_out(read_data_im)
  );  //调用memory作为指令存储器

  register_file register_file_uut (
      .clk(clk),
      .rst(rst),
      .A1 (A1),
      .A2 (A2),
      .RD1(RD1),
      .RD2(RD2),
      .A3 (A3),
      .WD3(result),
      .WE (WE3),
      .R15(R15)
  );  // 调用寄存器文件

  ALU32bit ALU32bit_uut (
      .a(srcA),
      .b(srcB),
      .op(ALUControl),
      .result(ALUResult),
      .ALUFlags(ALUFlags)
  );  //调用ALU

  memory_32bit memory_32bit_dm (
      .clk(clk),
      .address(A_dm),
      .rst_n(rst),
      .we(we_dm),
      .write_data(write_data_dm),
      .read_data(read_data_dm)
  );  //调用memory作为数据存储器

  mux2to1_32bit mux2to1_32bit_pc (
      .a  (pc_4),
      .b  (result),
      .sel(sel_pc),
      .y  (pc)
  );  //选择pc的二选一选择器

  mux2to1_4bit mux2to1_4bit_A2 (
      .a  (RA2),
      .b  (read_data_im[15:12]),
      .sel(sel_A2),
      .y  (A2)
  );  //选择A2的二选一选择器

  ripple_carry_adder_32bit ripple_carry_adder_32bit_pc4 (
      .a(pc_registers),
      .b(constpc),
      .cin(cinpc),
      .sum(pc_4),
      .cout(coutpc4)
  );  //用+4加法器计算出下一个pc的地址

  ripple_carry_adder_32bit ripple_carry_adder_32bit_pc8 (
      .a(pc_4),
      .b(constpc),
      .cin(cinpc),
      .sum(pc_8),
      .cout(coutpc8)
  );  //用+4加法器计算出pc+8的地址给R15

  mux2to1_32bit mux2to1_32bit_result (
      .a  (ALUResult),
      .b  (read_data_dm),
      .sel(sel_result),
      .y  (result)
  );  //选择result的二选一选择器

  mux2to1_32bit mux2to1_32bit_srcB (
      .a  (RD2),
      .b  (extlmm),
      .sel(sel_srcB),
      .y  (srcB)
  );  //选择srcB的二选一选择器

  mux2to1_4bit mux2to1_4bit_A1 (
      .a  (read_data_im[19:16]),
      .b  (RA1),
      .sel(sel_A1),
      .y  (A1)
  );  //选择A1的二选一选择器

  mux4to1 mux4to1_imm (
      .a  (extlmm00),
      .b  (extlmm01),
      .c  (extlmm10),
      .d  (extlmm11),
      .sel(sel_imm),
      .y  (extlmm)
  );  //进行立即零扩展的四选一选择器

  control_decoder control_decoder_uut (
      .cond(cond),
      .ALUFlags(ALUFlags),
      .op(op),
      .funct(funct),
      .rd(rd),
      .clk(clk),
      .pcsrc(sel_pc),
      .regwrite(WE3),
      .memwrite(we_dm),
      .memtoreg(sel_result),
      .alusrc(sel_srcB),
      .immsrc(sel_imm),
      .regsrc(regsrc),
      .ALUcotrol(ALUControl)
  );  //调用控制单元
endmodule
