`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/26/2023 05:49:39 PM
// Design Name: 
// Module Name: ArithmeticModule
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


module ArithmeticModule(input[3:0] AluOp, input[31:0] A, input[31:0] B, output[31:0] out); 
Wire addOut;

ThirtyTwoAdder(AluOp[2], A, B, addOut);
SLT(addOut, AluOp[0], out);

endmodule
