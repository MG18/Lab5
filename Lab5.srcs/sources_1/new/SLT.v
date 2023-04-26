`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/26/2023 05:33:28 PM
// Design Name: 
// Module Name: SLT
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


module SLT(input[31:0] addOut, enable, output[31:0] ArithOut);
wire extended;
reg flagBit, out;

always @(*)
begin
flagBit <= addOut[31];
    if(flagBit == 1)
        out <= 32'b1;
    else
        out <= 32'b0;
end   
assign ArithOut = out;
TwoToOneMultiplexer(enable, out, addOut, ArithOut); 
endmodule
