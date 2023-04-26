`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/26/2023 05:15:30 PM
// Design Name: 
// Module Name: FourToOneMux
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


module FourToOneMux(input [1:0] enable, input[31:0] A, input[31:0] B, input[31:0] C, input[31:0] D, output[31:0] out);

reg [31:0] out1;

always @(*)
    begin
    case (enable)
    2'b00: out1 <= A;
    2'b01: out1 <= B;
    2'b10: out1 <= C;
    2'b11: out1 <= D; 
    endcase
    end
    
assign out = out1;
    
endmodule
