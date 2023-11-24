`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.11.2023 19:44:25
// Design Name: 
// Module Name: tusingdflipflop_tb
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


module tusingdflipflop_tb(

    );
    reg t,clk,rst;
    wire q,qbar;
    tusingdflipflop dut(t,clk,rst,q,qbar);
    initial clk=0;
    always #5 clk=~clk;
    initial
    begin
    rst=1;
    #10 rst=0;t=0;
    #10 t=1;
    #10 t=0;
    #10 $finish;
    end
    
endmodule
