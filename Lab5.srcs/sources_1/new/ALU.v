`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.04.2023 22:20:48
// Design Name: 
// Module Name: ALU
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


module ALU(input [3:0] AluOp, input [31:0] A, input [31:0] B, output [31:0] out);
wire arithmeticOut, logicOut;

ArithmeticModule(AluOp, A, B, arithmeticOut);
LogicModule(AluOp, A , B, logicOut);

TwoToOneMultiplexer(AluOp[1], arithmeticOut, logicOut);
endmodule 
