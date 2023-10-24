`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.10.2023 12:34:51
// Design Name: 
// Module Name: fa_fs_tb
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


module fa_fs_tb(

    );
    reg a,b,u;
    reg cin;
    wire s,cout;
    fa_fs dut(a,b,cin,u,s,cout);
    initial
    begin
   u=1'b0; a=1'b0;b=1'b0;cin=1'b0;
    #10 a=1'b0;b=1'b0;cin=1'b1;
    #10 a=1'b0;b=1'b1;cin=1'b0;
    #10 a=1'b0;b=1'b1;cin=1'b1;
    #10 a=1;b=0;cin=0;
    #10 a=1;b=0;cin=1;
    #10 a=1;b=1;cin=0;
    #10 a=1;b=1;cin=1;
    #10 u=1;a=0;b=0;cin=0;
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
