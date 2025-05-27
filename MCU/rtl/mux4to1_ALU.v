module mux_4to1_32bit (
    input [31:0] a,    // 输入数据a
    input [31:0] b,    // 输入数据b
    input [31:0] c,    // 输入数据c
    input [1:0] sel,   // 选择信号（2位）
    output reg [31:0] y // 输出
);

// 根据选择信号输出相应的结果
always @(*) begin
    case(sel)
        2'b00: y = c; // 选择信号00，输出c
        2'b01: y = c; // 选择信号01，输出c
        2'b10: y = a & b; // 选择信号10，输出a和b的按位与
        2'b11: y = a | b; // 选择信号11，输出a和b的按位或
        default: y = c; // 默认情况，可以设置为其他值或保持原样
    endcase
end

endmodule