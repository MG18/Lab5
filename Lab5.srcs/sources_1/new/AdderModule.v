`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.04.2023 14:50:30
// Design Name: 
// Module Name: AdderModule
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


module AdderModule(input enable, input [31:0] A, input [31:0] B, output [31:0] addOut);
wire notbw, muxw;

not not1(notbw, B);
TwoToOneMultiplexer(enable, notbw, B, muxw);
SimpleAdder(A, muxw, addOut);

endmodule
