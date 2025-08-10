//--------------------------------------------------------------------
//   a[31:0] + b[31:0] + cin  -->  s[31:0], cout
//   三级流程： ① 产生单 bit P/G
//             ② 五层前缀树（距 1/2/4/8/16）并行求进位
//             ③ 求和  Si = Pi ^ Ci
//--------------------------------------------------------------------
module pre_adder_32 (
  input  wire [31:0] a,
  input  wire [31:0] b,
  input  wire        cin,  //前置进位
  output wire [31:0] s,
  output wire        cout
);
  // ==================== ① 单 bit Propagate / Generate =============
  wire [31:0] p = a ^ b;  // Pi = Ai xor Bi
  wire [31:0] g = a & b;  // Gi = Ai  &  Bi

  // ============ ② Kogge-Stone 前缀树（5 级）=======================
  // stage0 —— 原始 p/g
  wire [31:0] g0 = g;
  wire [31:0] p0 = p;

  //----------- stage1 : distance = 1 --------------------------------
  wire [31:0] g1, p1;
  genvar i;
  generate
    for (i = 0; i < 32; i = i + 1) begin : ST1
      if (i == 0) begin
        assign g1[i] = g0[i];
        assign p1[i] = p0[i];
      end else begin
        assign g1[i] = g0[i] | (p0[i] & g0[i-1]);
        assign p1[i] = p0[i] & p0[i-1];
      end
    end
  endgenerate

  //----------- stage2 : distance = 2 --------------------------------
  wire [31:0] g2, p2;
  generate
    for (i = 0; i < 32; i = i + 1) begin : ST2
      if (i < 2) begin
        assign g2[i] = g1[i];
        assign p2[i] = p1[i];
      end else begin
        assign g2[i] = g1[i] | (p1[i] & g1[i-2]);
        assign p2[i] = p1[i] & p1[i-2];
      end
    end
  endgenerate

  //----------- stage3 : distance = 4 --------------------------------
  wire [31:0] g3, p3;
  generate
    for (i = 0; i < 32; i = i + 1) begin : ST3
      if (i < 4) begin
        assign g3[i] = g2[i];
        assign p3[i] = p2[i];
      end else begin
        assign g3[i] = g2[i] | (p2[i] & g2[i-4]);
        assign p3[i] = p2[i] & p2[i-4];
      end
    end
  endgenerate

  //----------- stage4 : distance = 8 --------------------------------
  wire [31:0] g4, p4;
  generate
    for (i = 0; i < 32; i = i + 1) begin : ST4
      if (i < 8) begin
        assign g4[i] = g3[i];
        assign p4[i] = p3[i];
      end else begin
        assign g4[i] = g3[i] | (p3[i] & g3[i-8]);
        assign p4[i] = p3[i] & p3[i-8];
      end
    end
  endgenerate

  //----------- stage5 : distance = 16 -------------------------------
  wire [31:0] g5, p5;
  generate
    for (i = 0; i < 32; i = i + 1) begin : ST5
      if (i < 16) begin
        assign g5[i] = g4[i];
        assign p5[i] = p4[i];
      end else begin
        assign g5[i] = g4[i] | (p4[i] & g4[i-16]);
        assign p5[i] = p4[i] & p4[i-16];
      end
    end
  endgenerate

  // ==================== ③ 求各位进位 / 和 ========================
  wire [31:0] carry;
  assign carry[0] = cin;
  generate
    for (i = 1; i < 32; i = i + 1) begin : CARRY_GEN
      assign carry[i] = g5[i-1] | (p5[i-1] & cin);
    end
  endgenerate

  assign s    = p ^ carry;  // S = P xor C
  assign cout = g5[31] | (p5[31] & cin);  // Cout ＝ G31 | (P31·Cin)
endmodule
