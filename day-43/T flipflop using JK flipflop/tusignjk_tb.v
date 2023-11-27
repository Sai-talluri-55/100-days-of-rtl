`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.11.2023 23:01:32
// Design Name: 
// Module Name: tusignjk_tb
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


module tusignjk_tb(

    );
    reg t,clk,rst;
    wire q,qbar;
    tusingjk dut(t,clk,rst,q,qbar);
    initial clk=0;
    always #5 clk=~clk;
    initial
    begin
    rst=1;
    #10 rst=0; t=0;
    #10 t=1;
    #10 t=0;
    end
    
    
endmodule
