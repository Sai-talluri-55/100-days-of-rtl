`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.11.2023 18:07:53
// Design Name: 
// Module Name: demu_1x2_tb
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


module demu_1x2_tb(

    );
    reg a,s;
    wire [1:0]y;
    demux_1x2 dut(a,s,y);
    initial
    begin
    a=1;s=0;
   #10 a=0;s=1;
    #10 a=1;s=1;
    #10 $finish;
    end
    
endmodule
