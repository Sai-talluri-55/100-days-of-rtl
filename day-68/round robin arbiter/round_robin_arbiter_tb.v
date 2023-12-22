`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.12.2023 20:38:24
// Design Name: 
// Module Name: round_robin_arbiter_tb
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


module round_robin_arbiter_tb(

    );
    reg clk,rst;
    reg [3:0]request;
    wire [3:0]grant;
    round_robin_arbiter dut(clk,rst,request,grant);
    initial
    begin
    clk=0;rst=1;
    #10 rst=0;request=4'b1011;
    #30 request=4'b1001;
    #20 request=4'b0110;
    #30 request=4'b0100;
    #10 request=4'b0001;
    #10 $finish;
    end
   always #5 clk=~clk; 
endmodule
