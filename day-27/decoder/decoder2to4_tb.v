`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2023 20:19:39
// Design Name: 
// Module Name: decoder2to4_tb
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


module decoder2to4_tb(

    );
wire [3:0]y;
reg [1:0]a;
reg e;
decoder2to4 dut(a,e,y);
initial
begin
e=0;a=0;
#10 e=1;a=2'b00;
#10 e=1;a=2'b01;
#10 e=1;a=10;
#10 e=1;a=11;
end

endmodule
