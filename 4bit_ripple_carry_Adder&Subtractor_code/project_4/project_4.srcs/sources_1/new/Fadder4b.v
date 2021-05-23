`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2021 23:26:13
// Design Name: 
// Module Name: Fadder4b
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


module  Fadder4b(A,B,Ci,S,Cout);
    input [3:0]A,B;
    input Ci;
    output [3:0]S;
    output Cout;
    wire [2:0]Co;
    //assign S[0]= A[0]^B[0]^Ci;
    //assign Co[0] = A[0]&B[0]+A[0]&Ci+B[0]&Ci;
    Fadder Fadd1(.a(A[0]),.b(B[0]),.ci(Ci),.s(S[0]),.co(Co[0]));
    //assign S[1]= A[1]^B[1]^Co[0];
    Fadder Fadd2(.a(A[1]),.b(B[1]),.ci(Co[0]),.s(S[1]),.co(Co[1]));
    Fadder Fadd3(.a(A[2]),.b(B[2]),.ci(Co[1]),.s(S[2]),.co(Co[2]));
    Fadder Fadd4(.a(A[3]),.b(B[3]),.ci(Co[2]),.s(S[3]),.co(Cout));
endmodule
