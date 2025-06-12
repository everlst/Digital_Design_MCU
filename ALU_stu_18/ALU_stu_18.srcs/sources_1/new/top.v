`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/16 21:40:11
// Design Name: 
// Module Name: top
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


//(* MARK_DEBUG = "true" *)��ʾ��ʹ��ILA(Integrated Logic Analyzer)���źŽ��е��ԣ��ӿ������ϻض�����
module top(input rst,
           input clk_osc,
           output test);
    
    wire clk;//clocking wizard���ʱ��
    reg r_rst_temp;
    reg r_rst;//�����Ĵ������ĺ�ĸ�λ�ź�
    reg r_vaild_temp;
    reg r_vaild;
    reg [6:0]r_cnt;//rom��ַ����
    wire [65:0]w_test_vector;//rom����Ĳ�������
    wire [31:0]w_a;//����alu�����ź�����
    wire [31:0]w_b;
    wire [1:0]w_alu_ctrl;
    reg [31:0]r_a;//����
    reg [31:0]r_b;
    reg [1:0]r_alu_ctrl;
    wire [35:0]w_flags_and_result_rom;//rom�д洢����ȷ���
    wire [31:0]w_result_rom;//rom�д洢����ȷ���
    wire [3:0]w_alu_flags_rom;
    reg [31:0]r_result_rom;//����
    reg [3:0]r_alu_flags_rom;
    wire [31:0]w_result;//alu������
    wire [3:0]w_alu_flags;
    
    
    sys_clk u_sys_clk
    (
    .clk_out1(clk),
    .clk_in1(clk_osc)
    );
    
    //�첽��λ��ͬ���ͷ�
    always@(posedge clk,posedge rst)
    begin
        if (rst)
        begin
            r_rst_temp <= 1'd1;
            r_rst      <= 1'd1;
        end
        else
        begin
            r_rst_temp <= 1'd0;
            r_rst      <= r_rst_temp;
        end
    end
    
    //cnt
    always@(posedge clk,posedge r_rst)
    begin
        if (r_rst)
            r_cnt <= 7'd0;
        else
            if (r_cnt<7'd127)
                r_cnt <= r_cnt+7'd1;
            else
                r_cnt <= 7'd0;
    end
    
    test_vector_rom u_test_vector_rom
    (
    .clka(clk),
    .ena(1'b1),
    .addra(r_cnt),
    .douta(w_test_vector)
    );
    
    assign w_a        = w_test_vector[65:34];
    assign w_b        = w_test_vector[33:2];
    assign w_alu_ctrl = w_test_vector[1:0];
    
    test_flags_and_result_rom u_test_flags_and_result_rom
    (
    .clka(clk),
    .ena(1'b1),
    .addra(r_cnt),
    .douta(w_flags_and_result_rom)
    );
    
    assign w_alu_flags_rom = w_flags_and_result_rom[35:32];
    assign w_result_rom    = w_flags_and_result_rom[31:0];
    
    //��rom��������ݴ���
    always @(posedge clk , posedge r_rst)
    begin
        if (r_rst)
        begin
            r_a             <= 32'd0;
            r_b             <= 32'd0;
            r_alu_ctrl      <= 2'd0;
            r_result_rom    <= 32'd0;
            r_alu_flags_rom <= 4'd0;
        end
        else
        begin
            r_a             <= w_a;
            r_b             <= w_b;
            r_alu_ctrl      <= w_alu_ctrl;
            r_result_rom    <= w_result_rom;
            r_alu_flags_rom <= w_alu_flags_rom;
        end
    end
    
    //vaild�ź�����
    always@(posedge clk,posedge r_rst)
    begin
        if (r_rst)
        begin
            r_vaild_temp <= 1'b0;
            r_vaild      <= 1'b0;
        end
        else
        begin
            r_vaild_temp <= 1'b1;
            r_vaild      <= r_vaild_temp;
        end
    end
    
    //Ҫ�����aluģ��
    alu u_alu
    (
    .a(r_a),
    .b(r_b),
    .ALUControl(r_alu_ctrl),
    .Result(w_result),
    .ALUFlags(w_alu_flags)
    );
    
    ila_0 u_ila
    (
    .clk(clk),
    .probe0(test), // input wire [0:0]  probe0
    .probe1(r_rst), // input wire [0:0]  probe1
    .probe2(r_vaild), // input wire [0:0]  probe2
    .probe3(r_cnt), // input wire [6:0]  probe3
    .probe4(r_alu_flags_rom), // input wire [3:0]  probe4
    .probe5(w_alu_flags) // input wire [3:0]  probe5
    );
    
    assign test = (w_result == r_result_rom)&(w_alu_flags == r_alu_flags_rom)|(r_vaild == 1'b0);//���rom�����alu����Ƿ�һ��
    
endmodule
