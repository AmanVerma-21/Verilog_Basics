`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2021 22:00:27
// Design Name: 
// Module Name: tb
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


module tb1;
    reg a,b,cin;
    wire sum,cout;
    initial
    begin
        $monitor("simtime=%g,a=%b,b=%b,cin=%b,sum=%b,cout=%b",$time,a,b,cin,sum,cout);
    end
    Fadder full_adder(.a(a),.b(b),.ci(cin),.s(sum),.co(cout));
    initial
    begin
        #10 a=1'b0; b=1'b0; cin=1'b0;
        #10 a=1'b0; b=1'b0; cin=1'b1;
        #10 a=1'b0; b=1'b1; cin=1'b0;
        #10 a=1'b0; b=1'b1; cin=1'b1;
        #10 a=1'b1; b=1'b0; cin=1'b0;
        #10 a=1'b1; b=1'b0; cin=1'b1;
        #10 a=1'b1; b=1'b1; cin=1'b0;
        #10 a=1'b1; b=1'b1; cin=1'b1;
    end
endmodule




