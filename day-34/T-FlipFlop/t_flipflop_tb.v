`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.11.2023 17:59:48
// Design Name: 
// Module Name: t_flipflop_tb
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


module t_flipflop_tb(

    );
    reg t,clk,rst;
    wire q,qbar;
    t_flipflop dut(t,clk,rst,q,qbar);
    initial begin clk=0;t=0; end
    always #5 clk=~clk;
    initial begin
  
      rst=1;t=0;
     #10 rst=0;t=1;
     #10 t=0;
    #10 $finish;
    end
endmodule
