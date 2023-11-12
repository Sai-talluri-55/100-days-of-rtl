`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2023 19:15:01
// Design Name: 
// Module Name: fulladder_decoder_tb
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


module fulladder_decoder_tb(

    );
    reg [2:0]a;
    reg e;
    wire s,c;
    fulladder_dec dut(a,e,s,c);
    initial
    begin
    e=0;a=000;
    #10 e=1;a=000;
    #10 e=1;a=001;
    #10 e=1;a=010;
    #10 e=1;a=011;
    #10 e=1;a=100;
    #10 e=1;a=101;
    #10 e=1;a=110;
    #10 e=1;a=111;
    
       #10 $finish;
      
    
    
    
    
    end
    
endmodule
