`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.11.2023 21:20:20
// Design Name: 
// Module Name: bcdtoexcess_tb
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


module bcdtoexcess_tb(

    );
    reg [3:0]a;
    wire [3:0]y;
    
    bcdtoexcess3 a1(a,y);
    initial
    begin
    a=4'b0000;
    #10 a=4'b0001;
    #10 a=4'b0010;
    #10 a=4'b0011;
    #10 a=4'b0100;
    #10 a=4'b0101;
    #10 a=4'b0110;
    #10 a=4'b0111;
    #10 a=4'b1000;
    #10 $finish;
    
    end
    
endmodule
