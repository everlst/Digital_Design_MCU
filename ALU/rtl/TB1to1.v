module TB1to1 ();
  reg [31:0] a;
  reg sel;
  wire [31:0] y;
  mux_1to1_32bit uut (
      .a  (a),
      .sel(sel),
      .y  (y)
  );
  initial begin
    a   = 32'hFFFFFFFF;
    sel = 1;
    #50;
    a   = 32'h00000000;
    sel = 1;
    #50;
    a   = 32'h00000001;
    sel = 1;
    #50;
    a   = 32'hFFFFFFFF;
    sel = 0;
    #50;
    a   = 32'h00000000;
    sel = 0;
    #50;
    a   = 32'h00000001;
    sel = 0;
  end
endmodule
