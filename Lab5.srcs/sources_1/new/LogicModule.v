`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2023 07:30:13 PM
// Design Name: 
// Module Name: LogicModule
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
module LogicModule(input[3:0] AluOp, input[31:0] A, input[31:0] B, output[31:0] out);

reg [31:0] And;
reg [31:0] Or;
reg[31:0] Xor; 
reg[31:0] Nor;

AndBitwise(And, A, B);
OrBitwise(Or, A, B);
XorBitwise(Xor, A, B);
NorBitwise(Nor, A, B);

FourToOneMux(AluOp[1:0], And, Or, Xor, Nor, out);

endmodule