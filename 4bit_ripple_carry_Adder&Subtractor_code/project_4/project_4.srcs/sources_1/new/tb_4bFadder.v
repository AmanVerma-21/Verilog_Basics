`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2021 22:50:18
// Design Name: 
// Module Name: tb_4bFadder
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


module tb_4bFadder;
reg [3:0]A,B;
wire [3:0]Sum;
reg Ci;
wire Co;
initial
    $monitor("simtime=%g,A=%b,B=%b,Ci=%b,Sum=%b,Co=%b",$time,A,B,Ci,Sum,Co);
Fadder4b fa4b(.A(A),.B(B),.Ci(Ci),.S(Sum),.Cout(Co));
initial
begin
    #50 A=4'b0000; B=4'b1000; Ci=1'b0;
    #50 A=4'b0001; B=4'b0111; Ci=1'b1;
    #50 A=4'b0010; B=4'b0110; Ci=1'b0;
    #50 A=4'b0011; B=4'b0101; Ci=1'b1;
    #50 A=4'b0100; B=4'b0100; Ci=1'b1;
    #50 A=4'b0101; B=4'b0011; Ci=1'b0;
    #50 A=4'b0110; B=4'b0010; Ci=1'b1;
    #50 A=4'b0111; B=4'b0001; Ci=1'b1;
    #50 A=4'b1000; B=4'b1111; Ci=1'b1;
    #50 A=4'b1001; B=4'b1110; Ci=1'b0;
    #50 A=4'b1010; B=4'b1101; Ci=1'b0;
    #50 A=4'b1011; B=4'b1100; Ci=1'b1;
    #50 A=4'b1100; B=4'b1011; Ci=1'b0;
    #50 A=4'b1101; B=4'b1010; Ci=1'b0;
    #50 A=4'b1110; B=4'b1001; Ci=1'b1;
    #50 A=4'b1111; B=4'b1000; Ci=1'b1;
end
endmodule
