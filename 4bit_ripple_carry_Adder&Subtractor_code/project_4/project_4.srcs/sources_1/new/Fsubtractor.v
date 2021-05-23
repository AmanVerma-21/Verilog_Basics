`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.05.2021 23:04:03
// Design Name: 
// Module Name: Fsubtractor
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


module Fsubtractor(a,b,bri,d,bro);
    input a,b,bri;
    output d,bro;
    assign d = a^b^bri;
    assign bro = (~a)&b | bri & (~(a^b)); 
endmodule
