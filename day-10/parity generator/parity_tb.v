`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2023 19:34:05
// Design Name: 
// Module Name: parity_tb
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


module parity_tb(

    );
    reg [3:0]a;
    reg s;
    wire p;
    parity dut(a,s,p);
    initial
    begin
    a=4'b1001;s=0;
    #10 a=4'b1011;s=0;
    #10 a=4'b1001;s=1;
    #10 a=4'b1011;s=1;
    #10 $finish;
    end
    
endmodule
