`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2023 20:47:38
// Design Name: 
// Module Name: ha_beh
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


module ha_beh(
    input a,b,
    output reg  s,c
    );
    always@(*)
    begin 
    s<=a^b;
    c<=a&b;
    
    end
endmodule
