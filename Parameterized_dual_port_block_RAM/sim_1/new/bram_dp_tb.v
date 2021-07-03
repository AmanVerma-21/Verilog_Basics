`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.06.2021 12:40:17
// Design Name: 
// Module Name: bram_dp_tb
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


module bram_dp_tb();
    reg [7:0] data_i;
    reg [3:0] address_wr;
    reg [3:0] address_rd;
    reg clk_wr;
    reg clk_rd;
    reg we;
    reg clk_wr_en;
    reg clk_rd_en;
    reg rst;
    wire [7:0] data_o; 
    
    param_dp_bram #(
    .addr_width_wr(4),
    .addr_depth_wr(16),
    .data_width_wr(8),
    .addr_width_rd(4),
    .addr_depth_rd(16),
    .data_width_rd(8))
    test_bram_1(.data_i(data_i),
     .address_wr(address_wr),
     .address_rd(address_rd),
     .clk_wr(clk_wr),
     .clk_rd(clk_rd),
     .we(we),
     .clk_wr_en(clk_wr_en),
     .clk_rd_en(clk_rd_en),
     .rst(rst),
     .data_o(data_o)
    );
    //clk for writing mode
    initial begin
        clk_wr=1'b0;
        //#2
        clk_wr = 1'b1;
        forever #10 clk_wr = ~clk_wr;
    end
    //clk for read mode
    initial begin
        clk_rd=1'b0;
        #2
        clk_rd=1'b1;
        forever #10 clk_rd = ~clk_rd;
    end

    initial begin
        //intializing some values
        rst=1'b0;
        we=1'b1;
        clk_wr_en = 1'b1;
        clk_rd_en = 1'b0;
        #3 address_wr = 4'h01;
        data_i= 8'haa;
        #4 address_rd = 4'h01;
        clk_rd_en = 1'b1;
        
        #60 address_wr = 4'h02;
         data_i= 8'hab;
        #50
        #15 address_rd = 4'h01;
        
        #55
        address_rd = 4'h02;
        #200
        rst=1'b1;
        //clk_rd_en = 1'b1;
        //#1000;
        //$stop;
    end
    
    
endmodule















