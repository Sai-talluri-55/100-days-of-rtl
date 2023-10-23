`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.10.2023 18:14:11
// Design Name: 
// Module Name: ha_hs_tb
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


module ha_hs_tb(

    );
    reg a,b,u;
    wire s,c;
    ha_hs a1(a,b,u,s,c);
    initial
    begin
    u=0;a=0;b=0;
    #10 a=1;b=0;
    #10 a=0;b=1;
    #10 a=1;b=1;
     #10 u=1;a=0;b=0;
    #10 a=1;b=0;
    #10 a=0;b=1;
    #10 a=1;b=1;
    #10 $finish;
    end
    
endmodule
