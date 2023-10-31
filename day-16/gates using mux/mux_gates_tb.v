`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.10.2023 20:17:55
// Design Name: 
// Module Name: mux_gates_tb
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


module mux_gates_tb(

    );
    reg a,b;
    wire [6:0]y;
    mux_gates dut(a,b,y);
    initial
    begin
    a=1'b0;b=1'b0;
    #10  a=1'b0;b=1'b1;
    #10 a=1'b1;b=1'b0;
     #10 a=1'b1;b=1'b1;
     #10 $finish;
    end
endmodule
