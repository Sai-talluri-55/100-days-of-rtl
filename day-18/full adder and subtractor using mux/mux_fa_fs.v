`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2023 14:31:41
// Design Name: 
// Module Name: mux_fa_fs
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


module mux_fa_fs(
    input a,b,cin,
    output s,ca,di,bo
    );
    wire c;
    mux2x1 a1(1,0,cin,c);
    mux_4x1 fa_s({cin,c,c,cin},{a,b},s);
    mux_4x1 fa_c({1'b1,cin,cin,1'b0},{a,b},ca);
    mux_4x1 fs_di({cin,c,c,cin},{a,b},di);
    mux_4x1 fs_bo({cin,0,1,cin},{a,b},bo);
    
endmodule
