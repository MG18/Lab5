`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/26/2023 04:26:03 PM
// Design Name: 
// Module Name: 2To1Multiplexer
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


module TwoToOneMultiplexer(input enable, input[31:0] A, input[31:0] B, output [31:0] out);

reg [31:0] out1;

always @(*)
    begin
    if(enable)
        out1 <= B;
    else
        out1 <= A;
    end
    
assign out = out1;
    
endmodule
