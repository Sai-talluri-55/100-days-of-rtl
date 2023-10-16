`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2023 20:56:44
// Design Name: 
// Module Name: ha_tb
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


module ha_tb(

    );
    reg a,b;
    wire s,c;
    ha_beh a2(a,b,s,c);
    initial
     begin
    #50 a=0;b=0;
    #50 a=1;b=0;
    #50 a=0;b=1;
     #50 a=1;b=1;
    end
    
endmodule
