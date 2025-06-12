`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/11 21:20:31
// Design Name: 
// Module Name: Condition_check
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Condition_check(
    input   wire    [31:0]  InstrE,
    input   wire    [3:0]   Flags,
    output  reg             CondEx
);

wire    neg;
wire    zero;
wire    carry;
wire    overflow;
wire    ge;
    
assign neg = Flags[3];
assign zero = Flags[2];
assign carry = Flags[1];
assign overflow = Flags[0];
assign ge = (neg == overflow);

wire    [3:0]   cond;
assign  cond = InstrE[31:28];

always @(*) begin
    case (cond)
        4'b0000: CondEx = zero;
        4'b0001: CondEx = ~zero;
        4'b0010: CondEx = carry;
        4'b0011: CondEx = ~carry;
        4'b0100: CondEx = neg;
        4'b0101: CondEx = ~neg;
        4'b0110: CondEx = overflow;
        4'b0111: CondEx = ~overflow;
        4'b1000: CondEx = carry & ~zero;
        4'b1001: CondEx = ~(carry & ~zero);
        4'b1010: CondEx = ge;
        4'b1011: CondEx = ~ge;
        4'b1100: CondEx = (~zero) & ge;
        4'b1101: CondEx = ~(~zero & ge);
        4'b1110: CondEx = 1'b1;//Always
        default: CondEx = 1'b0;
    endcase
end

endmodule
