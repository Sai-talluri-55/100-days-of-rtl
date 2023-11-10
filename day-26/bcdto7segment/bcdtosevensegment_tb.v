`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.11.2023 20:22:21
// Design Name: 
// Module Name: bcdtosevensegment_tb
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


module bcdtosevensegment_tb(

    );
    reg [3:0]a;
    wire [6:0]y;
    bcdtosevensegment dut(a,y);
    initial
    begin
    a=4'b0000;
    #10 a=4'b0001;
    #10 a=4'b0011;
    #10 a=4'b0100;
    #10 a=4'b0101;
    #10 a=4'b0110;
    #10 a=4'b0111;
    #10 a=4'b1000;
    #10 a=4'b1001;
    #10 $finish;
    
    
    end
    
endmodule
