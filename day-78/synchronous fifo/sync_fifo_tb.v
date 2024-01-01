`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.01.2024 20:40:00
// Design Name: 
// Module Name: sync_fifo_tb
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


module sync_fifo_tb(

    );
    reg clk, reset, rd, wr;
    reg [7:0] data;
    wire empty, full;
    wire [3:0] count;
    wire [7:0] data_out;

    sync_fifo my_fifo (
        .data(data),
        .clk(clk),
        .reset(reset),
        .rd(rd),
        .wr(wr),
        .empty(empty),
        .full(full),
        .count(count),
        .data_out(data_out));

    initial begin
        clk = 0;
        reset = 1;
        rd = 0;
        wr = 0;
        data = 8'b0;
        #15 reset = 0;
        wr = 1;
        data = 8'd64;
        #10 wr = 0;
        rd = 1;
        #10 rd = 0;
        wr = 1;
        data = 8'd32;
        #10 wr = 0;
        rd = 1;
        #10 rd = 0;
        #10 $stop;
    end

    always #5 clk = ~clk;
endmodule
