`timescale 1ns / 1ps
module cla4bit (
    input [3:0] a,
    input [3:0] b,
    input cin,
    output reg [3:0] s,
    output reg cout
);

reg [3:0] g, p;

always @(*) begin
    // 计算生成和传播信号
    g[0] = a[0] & b[0];
    p[0] = a[0] ^ b[0];
    g[1] = a[1] & b[1];
    p[1] = a[1] ^ b[1];
    g[2] = a[2] & b[2];
    p[2] = a[2] ^ b[2];
    g[3] = a[3] & b[3];
    p[3] = a[3] ^ b[3];

    // 计算进位输出
    cout = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]) | (p[3] & p[2] & p[1] & p[0] & cin);

    // 计算和输出
    s[0] = p[0] ^ cin;
    s[1] = p[1] ^ (p[0] & cin | g[0]);
    s[2] = p[2] ^ (p[1] & p[0] & cin | p[1] & g[0] | g[1] & p[0] | g[1] & g[0]);
    s[3] = p[3] ^ (p[2] & (p[1] & p[0] & cin | p[1] & g[0] | g[1] & p[0] | g[1] & g[0]) | g[2] & (p[1] & p[0] | p[1] & g[0] | g[1] & p[0] | g[1] & g[0]));
end

endmodule
