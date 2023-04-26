`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/26/2023 05:25:45 PM
// Design Name: 
// Module Name: ThirthyTwoAdder
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


module ThirthyTwoAdder(input enable, input [31:0]A, [31:0] B, output [31:0] addOut);
wire notB, bW;
not not1(B, notB);
TwoToOneMultiplexer(enable, notB, B, bW);
FullAdder(enable, A, bW, addOut); 
endmodule
