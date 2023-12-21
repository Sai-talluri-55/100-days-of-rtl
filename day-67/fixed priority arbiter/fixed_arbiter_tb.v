`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.12.2023 22:31:50
// Design Name: 
// Module Name: fixed_arbiter_tb
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


module fixed_arbiter_tb(

    );parameter numsize = 4;
    
    reg [numsize-1:0] request;
  wire [numsize-1:0] grant;

  fixed_priority_arbiter uut (request,grant);
  
  initial begin
    request = 4'b0000;
    $monitor("Time=%0t request=%b grant=%b",$time,request,grant);
    #200 $finish;
  end
    always #20 request = $random;
endmodule
