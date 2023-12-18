`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.12.2023 19:17:05
// Design Name: 
// Module Name: universal_shift_tb
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


module universal_shift_tb(

    );
    reg clk,rst,right,left;
    reg [1:0] sel;
    reg [3:0] d;
    wire [3:0] q;
    universal_shift dut(clk,rst,right,left,sel,d,q);
    initial 
    begin
    clk=0;rst=1;d=4'b1010;
    
    #10 rst=0;
    sel=2'b11;
    #10 sel=2'b00;
    #20 sel=2'b01;right=1;
    #20 sel=2'b10;left=1;
    #20 sel=2'b11;d=4'b1110;
    #20 $finish;
    end
    always #5 clk=~clk;
    endmodule
