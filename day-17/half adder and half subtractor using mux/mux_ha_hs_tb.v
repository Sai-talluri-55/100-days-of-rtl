`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2023 20:16:24
// Design Name: 
// Module Name: mux_ha_hs_tb
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


module mux_ha_hs_tb(

    );
    reg a,b;
    wire s,c,di,bo;
    mux_ha_hs dut(a,b,s,c,di,bo);
    initial 
    begin
    a=1'b0;b=1'b0;
    #10 a=1'b0;b=1'b1;
    #10 a=1'b1;b=1'b0;
    #10 a=1'b1;b=1'b1;
    
    end
endmodule
