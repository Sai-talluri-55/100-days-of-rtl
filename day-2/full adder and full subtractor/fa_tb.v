`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2023 20:01:32
// Design Name: 
// Module Name: fa_tb
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

module fa_tb(

    );
    reg a,b,cin;
    wire s,cout;
    FA_beh a1(a,b,cin,s,cout);
    initial
     begin
     #10 a=0;b=0;cin=0;
     #10 a=0;b=0;cin=1;
     #10 a=0;b=1;cin=0;
     #10 a=0;b=1;cin=1;
     #10 a=1;b=0;cin=0;
     #10 a=1;b=0;cin=1;
     #10 a=1;b=1;cin=0;
     #10 a=1;b=1;cin=1;
     
    end
    
endmodule