`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/26/2023 05:31:40 PM
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


module FullAdder(input enable, input[31:0] A, input[31:0] B, output[31:0] addOut);
reg out;
always @(*)
begin
    if(enable)
        out <= A+B;
    else
        out <= A-B;
end
endmodule
