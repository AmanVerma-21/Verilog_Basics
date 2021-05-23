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


module tb_4b_Fsubtractor;
reg [3:0]A,B;
wire [3:0]D;
reg Bi;
wire Bo;
initial
  $monitor("simtime=%g,A=%b,B=%b,Bi=%b,D=%b,Bo=%b",$time,A,B,Bi,D,Bo);
  Fsubtract4b fs4b(.a(A),.b(B),.bri(Bi),.d(D),.bro(Bo));
initial
begin
    #50 A=4'b0000; B=4'b1000; Bi=1'b0;
    #50 A=4'b0001; B=4'b0111; Bi=1'b1;
    #50 A=4'b0010; B=4'b0110; Bi=1'b0;
    #50 A=4'b0011; B=4'b0101; Bi=1'b1;
   // #50 A=4'b0100; B=4'b0100; Bi=1'b1;
    #50 A=4'b0101; B=4'b0011; Bi=1'b0;
    #50 A=4'b0110; B=4'b0010; Bi=1'b1;
    #50 A=4'b0111; B=4'b0001; Bi=1'b1;
    #50 A=4'b1000; B=4'b1111; Bi=1'b1;
    #50 A=4'b1001; B=4'b1110; Bi=1'b0;
    #50 A=4'b1010; B=4'b1101; Bi=1'b0;
    #50 A=4'b1011; B=4'b1100; Bi=1'b1;
    #50 A=4'b1100; B=4'b1011; Bi=1'b0;
    #50 A=4'b1101; B=4'b1010; Bi=1'b0;
    #50 A=4'b1110; B=4'b1001; Bi=1'b1;
    #50 A=4'b1111; B=4'b1000; Bi=1'b1;
end
endmodule
