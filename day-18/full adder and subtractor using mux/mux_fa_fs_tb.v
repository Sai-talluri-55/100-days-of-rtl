`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.11.2023 14:36:18
// Design Name: 
// Module Name: mux_fa_fs_tb
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


module mux_fa_fs_tb(

    );
    reg a,b,cin;
    wire s,ca,di,bo;
    mux_fa_fs dut(a,b,cin,s,ca,di,bo);
    initial
    begin
    a=0;b=0;cin=0;
    #10 a=0;b=0;cin=1;
    #10 a=0;b=1;cin=0;
    #10 a=0;b=1;cin=1;
    #10 a=1;b=0;cin=0;
    #10 a=1;b=0;cin=1;
    #10 a=1;b=1;cin=0;
    #10 a=1;b=1;cin=1;
    #10 $finish;
    
    
    end
endmodule
