`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.01.2024 22:10:31
// Design Name: 
// Module Name: hamming_code_tb
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


module hamming_code_tb();
 reg [3:0]data;
    wire [6:0] encoded;
    
    hamming_code dut(data, encoded);
    
    initial begin
     $monitor("%d %d",data,encoded);
     data=4'b0110;
     #20 data = 4'b1010;
     #20 data = 4'b1110;
     #20 data = 4'b0010;
     #20 $stop;  
    end
endmodule
