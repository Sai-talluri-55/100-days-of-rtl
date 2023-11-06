`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.11.2023 19:27:26
// Design Name: 
// Module Name: priority_encoder_4to2_tb
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


module priority_encoder_4to2_tb();
reg [7:0]D;
wire [2:0]y; integer i;
priority_encoder_4to2 dut(.D(D),.y(y));
initial  
begin 
for(i=0;i<10;i=i+1)
begin 
D=$random;
#10;
end
$finish();
end
endmodule
