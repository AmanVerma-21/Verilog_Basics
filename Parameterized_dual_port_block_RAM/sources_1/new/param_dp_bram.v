`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.06.2021 09:40:49
// Design Name: 
// Module Name: param_dp_bram
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


module param_dp_bram #(
    parameter addr_width_wr = 9,
    parameter addr_depth_wr = 512,
    parameter data_width_wr = 18,
    
    parameter out_regmode = "reg",//PIN_1
    parameter rst_mode = "sync",//PIN_2
    parameter mem_file_format = "binary",//PIN_3
    parameter mem_file = "none",//PIN_4
   
    parameter addr_width_rd =9,
    parameter addr_depth_rd =512,
    parameter data_width_rd = 18)
    
    (input [(data_width_wr-1):0] data_i,
     input [(addr_width_wr-1):0] address_wr,
     input [(addr_width_rd-1):0] address_rd,
     input clk_wr,
     input clk_rd,
     input we,
     input clk_wr_en,
     input clk_rd_en,
     input rst,
     output reg [(data_width_rd-1):0] data_o
    );
   // memory declaration
   reg [(data_width_wr-1):0] memory [(addr_depth_wr-1):0];
   
   always @ (posedge clk_wr) begin
   if (we && !rst)
        if (clk_wr_en) memory[address_wr] <= data_i;
   end
   
   always @ (posedge clk_rd ) begin
   if (clk_rd_en && !rst) data_o <= memory[address_rd];
   else data_o<=0;
   end 
    

endmodule
