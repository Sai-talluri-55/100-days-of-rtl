`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.10.2023 20:59:04
// Design Name: 
// Module Name: fa_ha
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


module fa_ha(
    input a,b,cin,
    output s,cout
    );
    wire w1,w2,w3,w4;
 ha_struct  a1(a,b,w1,w2);
 ha_struct a2(w1,cin,s,w3);
 ha_struct a3(w2,w3,cout,w4);
endmodule
module ha_struct(
    input a,b,
    output s,c
    );
    xor a2(s,a,b);
    and a1(c,a,b);
    
endmodule

