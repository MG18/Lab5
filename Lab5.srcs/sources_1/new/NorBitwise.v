`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/26/2023 05:04:44 PM
// Design Name: 
// Module Name: NorBitwise
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


module NorBitwise(input [31:0] A, input [31:0] B, output [31:0] out);
//reg r0;
//NorBitwiseModule(r0, A[0], B[0]);
assign out = ~(A|B); 
endmodule
