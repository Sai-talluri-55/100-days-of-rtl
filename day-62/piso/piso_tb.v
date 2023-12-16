`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.12.2023 22:19:21
// Design Name: 
// Module Name: piso_tb
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


module piso_tb(

    );
    reg clk,rst,shift;
    reg [3:0]din;
    wire q;
    piso dut(clk,rst,shift,din,q);
    initial 
    begin
    clk=0;rst=1;din=4'b1010;
    #10 rst=0;shift=0;
    #10 shift=1;
    #10 shift=0;
    #10 shift=1;
    #10 shift=1;
    #50 $finish;
    
    end
    always #5 clk=~clk;
endmodule
