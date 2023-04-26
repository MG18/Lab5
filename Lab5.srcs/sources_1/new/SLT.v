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
reg [31:0] out;
always @(*)
begin
    if(A>B)
        out <= 32'b000000;
    else
        out <= 32'b000001;
end   
TwoToOneMultiplexer(enable, out, addOut, ArithOut); 
endmodule
