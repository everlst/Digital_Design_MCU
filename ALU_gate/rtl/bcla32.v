//--------------------------------------------------------------------
// 32-bit Block-CLA with 4-bit sub-CLA & 3-level Brent-Kung tree
//--------------------------------------------------------------------
module bcla32_tree (
  input  wire [31:0] a,
  input  wire [31:0] b,
  input  wire        cin,
  output wire [31:0] sum,
  output wire        cout
);
  // 1) 生成 8 个 4-bit 块的 P/G
  wire [7:0] Pblk, Gblk;
  wire [8:0] Cblk;  // 块间进位
  assign Cblk[0] = cin;

  genvar i;
  generate
    for (i = 0; i < 8; i = i + 1) begin : CLA4_BLOCK
      cla4 U (
        .a   (a[i*4+:4]),
        .b   (b[i*4+:4]),
        .cin (Cblk[i]),
        .sum (sum[i*4+:4]),
        .cout(  /* 未用 */),
        .Pgrp(Pblk[i]),
        .Ggrp(Gblk[i])
      );
    end
  endgenerate

  // 2) 三级 Brent-Kung 前缀树（距 1 / 2 / 4）
  wire [7:0] g1, p1, g2, p2, g3, p3;  // 树各级信号

  // ---- level-1 (distance 1) -----------------
  generate
    for (i = 0; i < 8; i = i + 1) begin : L1
      if (i == 0) begin
        assign g1[i] = Gblk[i];
        assign p1[i] = Pblk[i];
      end else begin
        black_cell BC (
          Gblk[i],
          Pblk[i],
          Gblk[i-1],
          Pblk[i-1],
          g1[i],
          p1[i]
        );
      end
    end
  endgenerate

  // ---- level-2 (distance 2) -----------------
  generate
    for (i = 0; i < 8; i = i + 1) begin : L2
      if (i < 2) begin
        assign g2[i] = g1[i];
        assign p2[i] = p1[i];
      end else begin
        black_cell BC (
          g1[i],
          p1[i],
          g1[i-2],
          p1[i-2],
          g2[i],
          p2[i]
        );
      end
    end
  endgenerate

  // ---- level-3 (distance 4) -----------------
  generate
    for (i = 0; i < 8; i = i + 1) begin : L3
      if (i < 4) begin
        assign g3[i] = g2[i];
        assign p3[i] = p2[i];
      end else begin
        black_cell BC (
          g2[i],
          p2[i],
          g2[i-4],
          p2[i-4],
          g3[i],
          p3[i]
        );
      end
    end
  endgenerate

  // 3) 求块进位：Cblk[i+1] = Gi | Pi·Cin
  generate
    for (i = 0; i < 8; i = i + 1) begin : CARRY_BLOCK
      grey_cell GC (
        g3[i],
        p3[i],
        cin,
        Cblk[i+1]
      );
    end
  endgenerate

  assign cout = Cblk[8];
endmodule
