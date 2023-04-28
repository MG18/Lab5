`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.04.2023 14:56:41
// Design Name: 
// Module Name: FourBitAdder
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


module FourBitAdder(input [3:0] a, input [3:0] b, input c0, output[3:0] sum, output c4);
wire c1, c2, c3;

FullAdder(a[0], b[0], c0, sum[0], c1);
FullAdder(a[1], b[1], c1, sum[1], c2);
FullAdder(a[2], b[2], c2, sum[2], c3);
FullAdder(a[3], b[3], c3, sum[3], c4);

endmodule
