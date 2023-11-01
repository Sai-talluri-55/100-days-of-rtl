`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2023 20:12:52
// Design Name: 
// Module Name: mux_ha_hs
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


module mux_ha_hs(
    input a,b,
    output s,c,di,bo
    );
    wire w1;
    mux2x1 a1(1,0,b,w1);
    mux2x1 ha_s(b,w1,a,s);
     mux2x1 ha_c(0,b,a,c);
      mux2x1 hs_di(b,w1,a,di);
       mux2x1 hs_bo(b,0,a,bo);
endmodule
