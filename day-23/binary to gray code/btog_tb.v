`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.11.2023 20:37:37
// Design Name: 
// Module Name: btog_tb
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


module btog_tb(

    );
    wire [3:0]y;
    reg [3:0]a;
    btog a1(a,y);
    initial
    begin
    a=4'b0001;
    #10 a=4'b0010;
    #10 a=4'b0010;
    #10 a=4'b0100;
    #10 a=4'b0110;
    #10 a=4'b1000;
    #10 a=4'b1010;
    #10 a=4'b1110;
    #10 a=4'b1111;
   #10 $finish;
    end
    
endmodule
