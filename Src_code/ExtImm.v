`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/13 08:48:08
// Design Name: 
// Module Name: ExtImm
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


module ExtImm(
    input   wire    [23:0]  Instr,
    input   wire    [1:0]   ImmSrc,//选择立即数拓展模式，00表示八位立即数拓展，01表示十二位立即数拓展，10表示二十四位有符号数拓展
    
    output  reg     [31:0]  ExtImm
);

wire    [4:0]   count;
wire    [31:0]   zero;
   
assign count = {Instr[11:8],1'b0}; 
assign zero = 32'd0;


always@(*)begin
    case(ImmSrc)
         2'b00: begin
            case(count)
                5'd0:   ExtImm = {24'b0, Instr[7:0]};
                5'd2:   ExtImm = {Instr[1:0] , 24'b0, Instr[7:2]};
                5'd4:   ExtImm = {Instr[3:0] , 24'b0, Instr[7:4]};
                5'd6:   ExtImm = {Instr[5:0] , 24'b0, Instr[7:6]};
                5'd8:   ExtImm = {Instr[7:0] , 24'd0};
                5'd10:  ExtImm = {2'b0,Instr[7:0],22'd0};
                5'd12:  ExtImm = {4'b0,Instr[7:0],20'd0};
                5'd14:  ExtImm = {6'b0,Instr[7:0],18'd0};
                5'd16:  ExtImm = {8'b0,Instr[7:0],16'd0};
                5'd18:  ExtImm = {10'b0,Instr[7:0],14'd0};
                5'd20:  ExtImm = {12'b0,Instr[7:0],12'd0};
                5'd22:  ExtImm = {14'b0,Instr[7:0],10'd0};
                5'd24:  ExtImm = {16'b0,Instr[7:0],8'd0};
                5'd26:  ExtImm = {18'b0,Instr[7:0],6'd0};
                5'd28:  ExtImm = {20'b0,Instr[7:0],4'd0};
                5'd30:  ExtImm = {22'b0,Instr[7:0],2'd0};
                default:   ExtImm = {24'b0,Instr[7:0]};
            endcase
         end
         2'b01: ExtImm = {20'd0, Instr[11:0]};
         2'b10: ExtImm = {{6{Instr[23]}}, Instr[23:0], 2'b00};
         default: ExtImm = 32'd0;
     endcase
    end
    
endmodule
