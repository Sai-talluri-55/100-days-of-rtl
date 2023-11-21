`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2023 18:07:41
// Design Name: 
// Module Name: tusingsr_tb
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


module tusingsr_tb(

    );
    reg t,clk,rst;
    wire q,qbar;
    tusingsrflipflop dut(t,clk,rst,q,qbar);
    initial clk=0;
    always #5 clk=~clk;
    initial
    begin
    rst=1;t=0;
    #10 rst=0;
    #10 t=1;
    #10 t=0;
    #10 t=1;
    #10 $finish;
    end
    
endmodule
