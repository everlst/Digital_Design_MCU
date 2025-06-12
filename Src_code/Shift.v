`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/15 11:21:24
// Design Name: 
// Module Name: Shift
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


module Shift(
    input   wire    [7:0]   Shift_order,
    input   wire    [31:0]  WriteData,
    input   wire    [7:0]   Register,
    
    output  wire   [31:0]   ShammData
);
                                                                                                                                                                                
reg     [31:0]  register_data;
reg     [31:0]  immedi_data;

always@(*) begin
    case(Shift_order[2:1])
        2'b00:  
            begin
                immedi_data <= WriteData << Shift_order[7:3];
                register_data <= WriteData << Register; 
            end
        2'b01:
            begin
                immedi_data <= WriteData >> Shift_order[7:3];
                register_data <= WriteData >> Register; 
            end
        2'b10:
            begin
                immedi_data <= ($signed(WriteData)) >>> Shift_order[7:3];
                register_data <= ($signed(WriteData)) >>> Register; 
            end
        2'b11:
            begin
                immedi_data <= WriteData;
                register_data <= WriteData; //循环右移待定，不一定用到
            end
        default:
            begin
                immedi_data <= WriteData;
                register_data <= WriteData; 
            end
    endcase
end

assign ShammData = (Shift_order[0])?register_data:immedi_data;

endmodule
