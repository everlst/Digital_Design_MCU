module mux_1to1_32bit (
    input      [31:0] a,    // 16位输入
    input             sel,  // 选择信号
    output reg [31:0] y     // 输出
);

  // 根据选择信号选择输出原数据或其按位取反
  always @(*) begin
    if (sel == 1'b0) y = a;  // 输出原数据
    else y = ~a;  // 输出按位取反后的数据
  end

endmodule
