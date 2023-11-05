`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.11.2023 20:51:19
// Design Name: 
// Module Name: encoder_4to2_tb
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


module encoder_4to2_tb(

    );
    reg [3:0]a;
    wire [1:0]y;
    encoder_4to2 dut(a,y);
    initial
    begin
    a=4'b1000;
   #10  a=4'b0100;
    #10 a=4'b0010;
   #10  a=4'b0001;
   #10 $finish;
    end
    
endmodule
