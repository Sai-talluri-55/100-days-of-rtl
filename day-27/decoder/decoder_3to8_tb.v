`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2023 20:35:54
// Design Name: 
// Module Name: decoder_3to8_tb
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


module decoder_3to8_tb(

    );
    reg [2:0] a;
    reg e;
    wire [7:0] y;
decoder3to8 dut(a,e,y);
initial
begin
e=0;a=000;
#10 e=1;a=001;
#10 e=1;a=010;
#10 e=1;a=011;
#10 e=1;a=100;
#10 e=1;a=101;
#10 e=1;a=110;
#10 e=1;a=111;
#10  
$finish;
end

endmodule
