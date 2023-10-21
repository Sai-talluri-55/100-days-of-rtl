`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2023 21:06:01
// Design Name: 
// Module Name: cla_tb
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


module cla_tb(

    );
    reg [3:0]a,b;
    reg cin;
    wire [3:0]s;
    wire cout;
    cla a1(a,b,s,cin,cout);
    initial 
    begin
     a=4'b1010;b=4'b1000;cin=0;
    # 10 a=4'b1000;b=4'b1001;
    #10 a=4'b1111;b=4'b1010;
    #10 a=4'b1111;b=4'b1111;
    end
    
endmodule

