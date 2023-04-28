`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/26/2023 05:25:45 PM
// Design Name: 
// Module Name: ThirtyTwoBitAdder
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


module ThirtyTwoBitAdder(input [31:0] A, input[31:0] B, output [31:0] addOut);
wire c1, c2, c3, c4, c5, c6, c7, c8;

FourBitAdder(A[3:0], B[3:0], 0, addOut[3:0], c1);
FourBitAdder(A[7:3], B[7:3], c1, addOut[7:3], c2);
FourBitAdder(A[11:7], B[11:7], c2, addOut[11:7], c3);
FourBitAdder(A[15:11], B[15:11], c3, addOut[15:11], c4);
FourBitAdder(A[19:15], B[19:15], c4, addOut[19:15], c5);
FourBitAdder(A[23:19], B[23:19], c5, addOut[23:19], c6);
FourBitAdder(A[27: 23], B[27:23], c6, addOut[27:23], c7);
FourBitAdder(A[31:27], B[31:27], c7, addOut[31:27], c8);

endmodule;
