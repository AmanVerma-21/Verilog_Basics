`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2021 20:22:28
// Design Name: 
// Module Name: Fadder
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


module Fadder(a,b,ci,s,co);
    input a,b,ci;
    output s,co;
    assign s= a^b^ci;
    assign co= a&b | b&ci | ci&a;
endmodule
