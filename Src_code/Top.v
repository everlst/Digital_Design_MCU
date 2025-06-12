`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/14 14:50:40
// Design Name: 
// Module Name: Top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Top(
    input   wire            sys_clk,
    input   wire            sys_rst_n,
    
    output  wire            ready
);

reg     [4:0]   ROM_ADDR;
wire    [1:0]   RAM_ADDR;
reg             flag;
wire    [15:0]  data_in;
wire    [3:0]   rom_addr;
assign rom_addr = ROM_ADDR[3:0] - 1;

dist_mem_gen_0 test_ROM (
  .a        (rom_addr),              // input wire [3 : 0] a
  .qspo_ce  (flag),  // input wire qspo_ce
  .spo      (data_in)          // output wire [31 : 0] spo
);
//外部数据存储器
assign verify_vector_in = (flag)? data_in : 16'd0;

clk_wiz_0 clk_gen
(
    .clk_out1   (clk_out),     // output clk_out1
    .clk_in1    (sys_clk),      // input clk_in1
    .reset      (1'b0   ), // input reset
    .locked     (ok     )
);//时钟

ila_0 test(
	.clk(clk_out), // input wire clk

	.probe0(cnt_test), // input wire [19:0]  probe0  
	.probe1(verify_vector_in), // input wire [15:0]  probe1 
	.probe2(verify_vector_out), // input wire [15:0]  probe2
    .probe3(ready) // input wire [0:0]  probe3
);
//测试平台

wire                clk_out;
reg     [19:0]      cnt_test;//计数器
wire    [15:0]      verify_vector_out;//输出数据
wire    [15:0]      verify_vector_in;//输入数据
wire                rst1,rst2,ok;
reg                 cnt_flag;
//--------------------------------------------------------------------------------测试需要

assign ready = ok & ~sys_rst_n;
assign rst1 = ready | flag;
assign rst2 = ready | flag;
always@(posedge clk_out or negedge ok) begin
    if(ok == 1'b0)
        cnt_flag <= 1'b0;
    else if(cnt_test < 20'd52 && cnt_test >= 20'd36)
        cnt_flag <= 1'b1;
    else
        cnt_flag <= 1'b0;
end
//----------------------------------------------处理复位信号

wire    [31:0]  PCF1, Instr1, ReadDataM1,ALUResultM1,WriteDataM1;
wire            MemWriteM1,MemtoRegM1;//MemtoRegM为高电平代表指令为LDR
wire    [3:0]   PC_Valid_Addr1;
wire    [1:0]   Addr1;
wire    [31:0]  Re_data1;
wire    [31:0]  Wr_data1;

assign PC_Valid_Addr1 = PCF1[5:2];

instr1_mem instr1_data (
  .a    (PC_Valid_Addr1),      // input wire [3 : 0] a
  .spo  (Instr1)  // output wire [31 : 0] spo
);

MCU_v5  My_Arm_Mcu1(
    .sys_clk        (clk_out    ), 
    .sys_rst_n      (~rst2       ),
    .Instr          (Instr1     ),
    .ReadDataM      (ReadDataM1 ),

    .MemWriteM      (MemWriteM1 ),
    .PCF            (PCF1       ),
    .ALUResultM     (ALUResultM1),
    .WriteDataM     (WriteDataM1),
    .MemtoRegM      (MemtoRegM1)
);

//第一个mcu的写地址范围为32-37


wire    [31:0]  PCF2, Instr2, ReadDataM2,ALUResultM2,WriteDataM2;
wire            MemWriteM2,MemtoRegM2;
wire    [3:0]   PC_Valid_Addr2;
wire    [1:0]   Addr2;
wire    [31:0]  Re_data2;
wire    [31:0]  Wr_data2;

assign PC_Valid_Addr2 = PCF2[5:2];

instr2_mem instr2_data (
  .a    (PC_Valid_Addr2),      // input wire [3 : 0] a
  .spo  (Instr2)  // output wire [31 : 0] spo
);

MCU_v5  My_Arm_Mcu2(
    .sys_clk        (clk_out    ), 
    .sys_rst_n      (~rst1       ),
    .Instr          (Instr2     ),
    .ReadDataM      (ReadDataM2 ),

    .MemWriteM      (MemWriteM2 ),
    .PCF            (PCF2       ),
    .ALUResultM     (ALUResultM2),
    .WriteDataM     (WriteDataM2),
    .MemtoRegM      (MemtoRegM2)
);

//第二个mcu的写地址范围为38-43

wire    [31:0]  PCF3, Instr3, ReadDataM3,ALUResultM3,WriteDataM3;
wire            MemWriteM3,MemtoRegM3;
wire    [3:0]   PC_Valid_Addr3;
wire    [1:0]   Addr3;
wire    [31:0]  Re_data3;
wire    [31:0]  Wr_data3;

assign PC_Valid_Addr3 = PCF3[5:2];

instr3_mem instr3_data (
  .a    (PC_Valid_Addr3),      // input wire [3 : 0] a
  .spo  (Instr3)  // output wire [31 : 0] spo
);

MCU_v5  My_Arm_Mcu3(
    .sys_clk        (clk_out    ), 
    .sys_rst_n      (~rst2       ),
    .Instr          (Instr3     ),
    .ReadDataM      (ReadDataM3 ),

    .MemWriteM      (MemWriteM3 ),
    .PCF            (PCF3       ),
    .ALUResultM     (ALUResultM3),
    .WriteDataM     (WriteDataM3),
    .MemtoRegM      (MemtoRegM3)
);

//第三个mcu的写地址范围为44-49

wire    [31:0]  PCF4, Instr4, ReadDataM4,ALUResultM4,WriteDataM4;
wire            MemWriteM4,MemtoRegM4;
wire    [3:0]   PC_Valid_Addr4;
wire    [1:0]   Addr4;
wire    [31:0]  Re_data4;
wire    [31:0]  Wr_data4;

assign PC_Valid_Addr4 = PCF4[5:2];

instr4_mem instr4_data (
  .a    (PC_Valid_Addr4),      // input wire [3 : 0] a
  .spo  (Instr4)  // output wire [31 : 0] spo
);

MCU_v5  My_Arm_Mcu4(
    .sys_clk        (clk_out    ), 
    .sys_rst_n      (~rst1       ),
    .Instr          (Instr4     ),
    .ReadDataM      (ReadDataM4 ),

    .MemWriteM      (MemWriteM4 ),
    .PCF            (PCF4       ),
    .ALUResultM     (ALUResultM4),
    .WriteDataM     (WriteDataM4),
    .MemtoRegM      (MemtoRegM4)
);

//第四个mcu的写地址范围为50-55

wire    [31:0]  PCF5, Instr5, ReadDataM5,ALUResultM5,WriteDataM5;
wire            MemWriteM5,MemtoRegM5;
wire    [3:0]   PC_Valid_Addr5;
wire    [1:0]   Addr5;
wire    [31:0]  Re_data5;
wire    [31:0]  Wr_data5;

assign PC_Valid_Addr5 = PCF5[5:2];

instr5_mem instr5_data (
  .a    (PC_Valid_Addr5),      // input wire [3 : 0] a
  .spo  (Instr5)  // output wire [31 : 0] spo
);


MCU_v5  My_Arm_Mcu5(
    .sys_clk        (clk_out    ), 
    .sys_rst_n      (~rst2       ),
    .Instr          (Instr5     ),
    .ReadDataM      (ReadDataM5 ),

    .MemWriteM      (MemWriteM5 ),
    .PCF            (PCF5       ),
    .ALUResultM     (ALUResultM5),
    .WriteDataM     (WriteDataM5),
    .MemtoRegM      (MemtoRegM5)
);

//第五个mcu的写地址范围为56-61


wire    [31:0]  PCF6, Instr6, ReadDataM6,ALUResultM6,WriteDataM6;
wire            MemWriteM6,MemtoRegM6;
wire    [3:0]   PC_Valid_Addr6;
wire    [1:0]   Addr6;
wire    [31:0]  Re_data6;
wire    [31:0]  Wr_data6;

assign PC_Valid_Addr6 = PCF6[5:2];

instr6_mem instr6_data (
  .a    (PC_Valid_Addr6),      // input wire [3 : 0] a
  .spo  (Instr6)  // output wire [31 : 0] spo
);

MCU_v5  My_Arm_Mcu6(
    .sys_clk        (clk_out    ), 
    .sys_rst_n      (~rst1       ),
    .Instr          (Instr6     ),
    .ReadDataM      (ReadDataM6 ),

    .MemWriteM      (MemWriteM6 ),
    .PCF            (PCF6       ),
    .ALUResultM     (ALUResultM6),
    .WriteDataM     (WriteDataM6),
    .MemtoRegM      (MemtoRegM6)
);

//第六个mcu的写地址范围为62-67

wire    [31:0]  PCF7, Instr7, ReadDataM7,ALUResultM7,WriteDataM7;
wire            MemWriteM7,MemtoRegM7;
wire    [3:0]   PC_Valid_Addr7;
wire    [1:0]   Addr7;
wire    [31:0]  Re_data7;
wire    [31:0]  Wr_data7;

assign PC_Valid_Addr7 = PCF7[5:2];

instr7_mem instr7_data (
  .a    (PC_Valid_Addr7),      // input wire [3 : 0] a
  .spo  (Instr7)  // output wire [31 : 0] spo
);

MCU_v5  My_Arm_Mcu7(
    .sys_clk        (clk_out    ), 
    .sys_rst_n      (~rst2       ),
    .Instr          (Instr7     ),
    .ReadDataM      (ReadDataM7 ),

    .MemWriteM      (MemWriteM7 ),
    .PCF            (PCF7       ),
    .ALUResultM     (ALUResultM7),
    .WriteDataM     (WriteDataM7),
    .MemtoRegM      (MemtoRegM7)
);
//第七个mcu的写地址范围为68-73

wire    [31:0]  PCF8, Instr8, ReadDataM8,ALUResultM8,WriteDataM8;
wire            MemWriteM8,MemtoRegM8;
wire    [3:0]   PC_Valid_Addr8;
wire    [1:0]   Addr8;
wire    [31:0]  Re_data8;
wire    [31:0]  Wr_data8;

assign PC_Valid_Addr8 = PCF8[5:2];

instr8_mem instr8_data (
  .a    (PC_Valid_Addr8),      // input wire [3 : 0] a
  .spo  (Instr8)  // output wire [31 : 0] spo
);

MCU_v5  My_Arm_Mcu8(
    .sys_clk        (clk_out    ), 
    .sys_rst_n      (~rst1       ),
    .Instr          (Instr8     ),
    .ReadDataM      (ReadDataM8 ),

    .MemWriteM      (MemWriteM8 ),
    .PCF            (PCF8       ),
    .ALUResultM     (ALUResultM8),
    .WriteDataM     (WriteDataM8),
    .MemtoRegM      (MemtoRegM8)
);
//第八个mcu的写地址范围为74-79

always@(posedge clk_out or negedge ready) begin
    if(ready == 1'b0)
        cnt_test <= 20'd0;
    else if(cnt_test == 20'd52)
        cnt_test <= 20'd52;
    else
        cnt_test <= cnt_test + 20'd1;
end

always@(posedge clk_out or negedge ready) begin
    if(ready == 1'b0)
        flag <= 1'b0;
    else if(cnt_test <= 8'd15)
        flag <= 1'b1;
    else
        flag <= 1'b0;
end


always@(posedge clk_out or negedge ready) begin
    if(ready == 1'b0)
        ROM_ADDR <= 5'd0;
    else if(ROM_ADDR >= 5'd15)
        ROM_ADDR <= 5'd16;
    else
        ROM_ADDR <= ROM_ADDR + 8'd1;
end

assign RAM_ADDR = rom_addr[0:0];
//对各个读地址的赋值
wire    [2:0]    rd_od1,rd_od2,rd_od3,rd_od4,rd_od5,rd_od6,rd_od7,rd_od8;
wire            we1,we2,we3,we4,we5,we6,we7,we8;
wire    [31:0]   wd_data1,wd_data2,wd_data3,wd_data4,wd_data5,wd_data6,wd_data7,wd_data8;
reg     [2:0]   wr_addr;

always@(posedge clk_out or negedge ready) begin
    if(ready == 1'b0)
        wr_addr <= 3'd0;
    else if(RAM_ADDR == 1'b1 & flag)
        wr_addr <= wr_addr + 3'd1;
    else
        wr_addr <= wr_addr;
end

assign rd_od1 = ALUResultM1[4:2];
assign rd_od2 = ALUResultM2[4:2];
assign rd_od3 = ALUResultM3[4:2];
assign rd_od4 = ALUResultM4[4:2];
assign rd_od5 = ALUResultM5[4:2];
assign rd_od6 = ALUResultM6[4:2];
assign rd_od7 = ALUResultM7[4:2];
assign rd_od8 = (cnt_flag)?cnt1:ALUResultM8[4:2];


assign Addr1 = (wr_addr == 3'd0 & flag)? RAM_ADDR : ALUResultM1[1:0];
assign Addr2 = (wr_addr == 3'd1 & flag)? RAM_ADDR : ALUResultM2[1:0];
assign Addr3 = (wr_addr == 3'd2 & flag)? RAM_ADDR : ALUResultM3[1:0];
assign Addr4 = (wr_addr == 3'd3 & flag)? RAM_ADDR : ALUResultM4[1:0];
assign Addr5 = (wr_addr == 3'd4 & flag)? RAM_ADDR : ALUResultM5[1:0];
assign Addr6 = (wr_addr == 3'd5 & flag)? RAM_ADDR : ALUResultM6[1:0];
assign Addr7 = (wr_addr == 3'd6 & flag)? RAM_ADDR : ALUResultM7[1:0];
assign Addr8 = (cnt_flag)? address : (wr_addr == 3'd7 & flag)? RAM_ADDR : ALUResultM8[1:0];


assign we1 = (wr_addr == 3'd0 & flag) ? 1'b1 : MemWriteM1;
assign we2 = (wr_addr == 3'd1 & flag) ? 1'b1 : MemWriteM2;
assign we3 = (wr_addr == 3'd2 & flag) ? 1'b1 : MemWriteM3;
assign we4 = (wr_addr == 3'd3 & flag) ? 1'b1 : MemWriteM4;
assign we5 = (wr_addr == 3'd4 & flag) ? 1'b1 : MemWriteM5;
assign we6 = (wr_addr == 3'd5 & flag) ? 1'b1 : MemWriteM6;
assign we7 = (wr_addr == 3'd6 & flag) ? 1'b1 : MemWriteM7;
assign we8 = (wr_addr == 3'd7 & flag) ? 1'b1 : MemWriteM8;

assign  wd_data1 = (flag)? {{8{verify_vector_in[15]}},verify_vector_in,8'd0} :WriteDataM1;
assign  wd_data2 = (flag)? {{8{verify_vector_in[15]}},verify_vector_in,8'd0} :WriteDataM2;
assign  wd_data3 = (flag)? {{8{verify_vector_in[15]}},verify_vector_in,8'd0} :WriteDataM3;
assign  wd_data4 = (flag)? {{8{verify_vector_in[15]}},verify_vector_in,8'd0} :WriteDataM4;
assign  wd_data5 = (flag)? {{8{verify_vector_in[15]}},verify_vector_in,8'd0} :WriteDataM5;
assign  wd_data6 = (flag)? {{8{verify_vector_in[15]}},verify_vector_in,8'd0} :WriteDataM6;
assign  wd_data7 = (flag)? {{8{verify_vector_in[15]}},verify_vector_in,8'd0} :WriteDataM7;
assign  wd_data8 = (flag)? {{8{verify_vector_in[15]}},verify_vector_in,8'd0} :WriteDataM8;

Common_mem  share_memory(
    .clk_in      (clk_out),
    .rst         (~ready),
    .we1         (we1),
    .addr1       (Addr1),
    .rd_od1      (rd_od1),
    .wd_data1    (wd_data1),
    .rd_data1    (ReadDataM1),
    
    .we2         (we2),
    .addr2       (Addr2),
    .rd_od2      (rd_od2),
    .wd_data2    (wd_data2),
    .rd_data2    (ReadDataM2),
    
    .we3         (we3),
    .addr3       (Addr3),
    .rd_od3      (rd_od3),
    .wd_data3    (wd_data3),
    .rd_data3    (ReadDataM3),
    
    .we4         (we4),
    .addr4       (Addr4),
    .rd_od4      (rd_od4),
    .wd_data4    (wd_data4),   
    .rd_data4    (ReadDataM4),
    
    .we5         (we5),
    .addr5       (Addr5),
    .rd_od5      (rd_od5),
    .wd_data5    (wd_data5),
    .rd_data5    (ReadDataM5),
    
    .we6         (we6),
    .addr6       (Addr6),
    .rd_od6      (rd_od6),
    .wd_data6    (wd_data6),
    .rd_data6    (ReadDataM6),
    
    .we7         (we7),
    .addr7       (Addr7),
    .rd_od7      (rd_od7),
    .wd_data7    (wd_data7),
    .rd_data7    (ReadDataM7),
    
    .we8         (we8),
    .addr8       (Addr8),
    .rd_od8      (rd_od8),
    .wd_data8    (wd_data8),
    .rd_data8    (ReadDataM8)
);

reg         [2:0]   cnt1,cnt2;
wire        [1:0]   address;

assign  address = (cnt2 == 3'd0 || cnt2 == 3'd2)? 2'd2:2'd3;
assign  verify_vector_out = (cnt_flag)?ReadDataM8[16:1]:16'd0; 

always@(posedge clk_out or negedge cnt_flag) begin
    if(cnt_flag == 1'b0)
        cnt1 <= 3'b000;
    else if(cnt1 == 3'b011 && cnt2 == 3'd0)
        cnt1 <= 3'b000;
    else if(cnt1 == 3'b011 && cnt2 == 3'd1)
        cnt1 <= 3'b100;
    else if(cnt1 == 3'b111 && cnt2 == 3'd2)
        cnt1 <= 3'b100;
    else if(cnt1 == 3'b111 && cnt2 == 3'd3)
        cnt1 <= 3'b000;
    else
        cnt1 <= cnt1 + 3'd1;
end

always@(posedge clk_out or negedge cnt_flag) begin
    if(cnt_flag == 1'b0)
        cnt2 <= 3'b000;
    else if(cnt1 == 3'b011 || cnt1 == 3'b111)
        cnt2 <= cnt2 + 3'd1;
    else
        cnt2 <= cnt2;
end
//各个核同时发生读写，MemtoReg同时为1或者同时为0

endmodule
