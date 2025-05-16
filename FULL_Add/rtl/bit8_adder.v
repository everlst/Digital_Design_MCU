module bit8_adder #(
  parameter WIDTH = 8
) (
  input  wire [WIDTH-1:0] a,
  input  wire [WIDTH-1:0] b,
  input  wire             cin,
  output wire [  WIDTH:0] sum,
  output wire             cout
);
  wire [WIDTH:0] c;  // 中间进位线
  //assign c[0] = cin;  // 第一个进位线由cin输入

  wire [WIDTH:0] A = {1'b0, a};  //往前补一位0做好溢出的准备
  wire [WIDTH:0] B = {1'b0, b};

  genvar i;
  generate
    for (i = 0; i <= WIDTH; i = i + 1) begin : G_FA
      bit1_full_adder fa (
        .a   (A[i]),
        .b   (B[i]),
        .cin ((i == 0) ? cin : c[i-1]),
        .sum (sum[i]),
        .cout(c[i])                      //第i位的进位，并在下一位计算时调用
      );
    end
  endgenerate

  assign cout = c[WIDTH];

  //   wire [WIDTH:0] Sum;
  //   if ((a[WIDTH-1] == b[WIDTH-1] ) && a[WIDTH-1] != sum[WIDTH-1]) begin
  //     if (sum[WIDTH] == 1) begin
  //         sum = ~sum;
  //         sum = sum + 1;
  //     end else begin
  //         sum = sum;
  //     end
  //   end  
  //   else begin
  //     if(sum[WIDTH-1] == 1) begin
  //         sum = ~sum;
  //         sum = sum + 1;
  //     end else begin
  //         sum = sum;
  //     end
  //   end


endmodule
