//--------------------------------------------------------------------
// 32-bit ALU  ——  操作码 00:AND 01:OR 10:ADD 11:SUB
// Flag 顺序：N Z C V
//--------------------------------------------------------------------
module ALU_top (
  input  wire [31:0] A,
  input  wire [31:0] B,
  input  wire [ 1:0] ALUOp,
  output wire [31:0] Result,
  output wire [ 3:0] ALUFlags
);
  //---------------- 0) opcode decode --------------------------------
  wire        is_and = ALUOp[1] & ~ALUOp[0];
  wire        is_or = ALUOp[1] & ALUOp[0];
  wire        is_add = ~ALUOp[1] & ~ALUOp[0];
  wire        is_sub = ~ALUOp[1] & ALUOp[0];

  //---------------- 1) logical ops ----------------------------------
  wire [31:0] and_r = A & B;
  wire [31:0] or_r = A | B;

  //---------------- 2) add / sub ------------------------------------
  wire [31:0] B_mux = B ^ {32{is_sub}};  // B 或 ~B
  wire        cin = is_sub;  // +1 for SUB
  wire [31:0] add_r;
  wire        cout;
  ks_adder32 ADD_U (
    .a   (A),
    .b   (B_mux),
    .cin (cin),
    .sum (add_r),
    .cout(cout)
  );

  //---------------- 3) overflow -------------------------------------
  wire ovf = (is_sub & (A[31]^B[31]) & (A[31]^add_r[31])) |
             (is_add & ~(A[31]^B[31]) & (A[31]^add_r[31]));

  //---------------- 4) result mux (gate mask) ------------------------
  assign Result   = ({32{is_and}} & and_r) | ({32{is_or}} & or_r) | ({32{is_add | is_sub}} & add_r);

  //---------------- 5) flags -----------------------------------------
  assign ALUFlags = {Result[31],  // N
~|Result,  // Z
 cout & (is_add | is_sub),  // C
 ovf};  // V
endmodule
