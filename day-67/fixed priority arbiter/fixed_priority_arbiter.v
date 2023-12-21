`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.12.2023 22:27:17
// Design Name: 
// Module Name: fixed_priority_arbiter
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


module fixed_priority_arbiter

    #(parameter numsize=4)(
  input [numsize-1:0] request,
  output [numsize-1:0] grant
);
    assign grant[numsize-1] = request[numsize-1];
    genvar i;

    for (i = numsize-2; i >=0; i = i - 1) begin
      assign grant[i] = request [i] && (~(|(request[numsize-1:i+1])));
    end

endmodule
