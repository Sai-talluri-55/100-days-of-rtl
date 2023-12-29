`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2023 22:14:08
// Design Name: 
// Module Name: sram_tb
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


module sram_tb(

    );
    parameter addr_width = 6;
    parameter data_width = 8;
    parameter depth = 64;
    
	reg we,clk;    
	reg [data_width-1:0] data;
	reg [addr_width:0] addr;
	wire [data_width-1:0] out;

	sram uut (we,clk,data,addr,out);


   always #5 clk=~clk;

    initial begin
        clk=0;
        data=8'h01;
        addr=5'd0;      
        we=1'b1;        
        #10;
        data=8'h02;
        addr=5'd1;      
        #10;        
        addr=5'd0;      
        we=1'b0;        
        #10;        
        addr=5'd1;       
        #10;        
        addr=5'd2;      
        #10 $finish;  
    end
endmodule
