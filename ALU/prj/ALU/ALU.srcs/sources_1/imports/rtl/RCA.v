module full_adder (
    input a,
    input b,
    input cin,
    output sum,
    output cout
);
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (a & cin) | (b & cin);
endmodule

module ripple_carry_adder_32bit (
    input [31:0] a,
    input [31:0] b,
    input cin,
    output [31:0] sum,
    output cout
);
    wire [31:0] couts;
    
    // 32 个全加器级联
    generate
        genvar i;
        for (i = 0; i < 32; i = i + 1) begin: adder
            if (i == 0) begin
                full_adder fa (
                    .a(a[i]),
                    .b(b[i]),
                    .cin(cin),
                    .sum(sum[i]),
                    .cout(couts[i])
                );
            end else begin
                full_adder fa (
                    .a(a[i]),
                    .b(b[i]),
                    .cin(couts[i-1]),
                    .sum(sum[i]),
                    .cout(couts[i])
                );
            end
        end
    endgenerate
    
    // 最终进位输出
    assign cout = couts[31];
endmodule