module LogicModule(input[3:0] AluOp, input[31:0] A, input[31:0] B, output[31:0] out);

reg [31:0] And;
reg [31:0] Or;
reg[31:0] Xor; 
reg[31:0] Nor;

AndBitwise(A, B, And);
OrBitwise(A, B, Or);
XorBitwise(A, B, Xor);
NorBitwise(A, B, Nor);

FourToOneMultiplexer(AluOp[1:0], And, Or, Xor, Nor, out);

endmodule