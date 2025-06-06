module mux2to1_32bit (
    input      [31:0] a,    // 32位输入,低有效
    input      [31:0] b,    //高有效
    input             sel,  // 选择信号
    output reg [31:0] y     // 输出
);

  // 根据选择信号选择输出原数据或其按位取反
  always @(*) begin
    if (sel == 1'b0) y = a;  // 0输出a
    else y = b;  // 1输出b
  end

endmodule
