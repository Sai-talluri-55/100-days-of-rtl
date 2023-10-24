`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.10.2023 11:59:21
// Design Name: 
// Module Name: carryskip_tb
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


module carryskip_tb(

    );
    reg [3:0]a,b;
    reg cin;
    wire [3:0]s,p;
    wire cout1;
    carryskip dut(a,b,cin,s,p,cout1);
    initial
    begin
    a=4'b1001;b=4'b0110;cin=0;
   #10 a=4'b1001;b=4'b0110;cin=1;
   #10 a=4'b1111;b=4'b1111;cin=0;
   #10 a=4'b1111;b=4'b1111;cin=1;
   #10 a=4'b1001;b=4'b1101;cin=0;
   #10 a=4'b1001;b=4'b1101;cin=1;
   #10 b=4'b1001;a=4'b0110;cin=0;
   #10 b=4'b1001;a=4'b0110;cin=1;
    
    end
endmodule
