`timescale 1ns / 1ps

module tb_2();
    reg [7:0] data_i;
    reg [3:0] address_wr;
    reg [4:0] address_rd;
    reg clk_wr;
    reg clk_rd;
    reg we;
    reg clk_wr_en;
    reg clk_rd_en;
    reg rst;
    wire [3:0] data_o; 
    
    param_dp_bram #(
    .addr_width_wr(4),
    .addr_depth_wr(16),
    .data_width_wr(8),
    .addr_width_rd(5),
    .addr_depth_rd(32),
    .data_width_rd(4))
    test_bench_2(.data_i(data_i),
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
        forever #5 clk_wr = ~clk_wr;
    end
    //clk for read mode
    initial begin
        clk_rd=1'b0;
        #2
        clk_rd=1'b1;
        forever #5 clk_rd = ~clk_rd;
    end
    
    //for writnig data
    initial begin
    we = 1;
    rst = 0;
    clk_wr_en=1;
    for(address_wr =0; address_wr<16; address_wr = address_wr+1) #15 data_i = address_wr*10;
    clk_wr_en = 0;
    we = 0;
    end
    
    //for reading the data
    initial begin
    #200 clk_rd_en = 1;
    for(address_rd =0; address_rd<32; address_rd = address_rd+1) #15 ;
    clk_rd_en = 0;
    end
    
    
endmodule
