`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.05.2021 23:40:42
// Design Name: 
// Module Name: Fsubtract4b
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


module Fsubtract4b(a,b,bri,d,bro);
    input [3:0]a,b;
    input bri;
    output [3:0]d;
    output bro;
    wire [2:0]bro;
    
    Fsubtractor fsub0(.a(a[0]),.b(b[0]),.bri(bri),.d(d[0]),.bro(bro[0]));
    Fsubtractor fsub1(.a(a[1]),.b(b[1]),.bri(bro[0]),.d(d[1]),.bro(bro[1]));
    Fsubtractor fsub2(.a(a[2]),.b(b[2]),.bri(bro[1]),.d(d[2]),.bro(bro[2]));
    Fsubtractor fsub3(.a(a[3]),.b(b[3]),.bri(bro[2]),.d(d[3]),.bro(bro));
endmodule
