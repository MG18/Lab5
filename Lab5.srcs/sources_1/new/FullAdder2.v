`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.04.2023 14:55:58
// Design Name: 
// Module Name: FullAdder
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


module FullAdder(input a, input b, input cin, output sum, output carry);
wire xor1w, and1w, and2w, and3w;

xor xor1(a, b, xor1w);
xor xor2(xor1w, cin, sum);
and and1(a, b, and1w);
and and2(b, cin, and2w);
and and3(cin, a, and3w);
or or1(and1w, and2w, and3w, carry);

endmodule
