`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.12.2023 22:47:18
// Design Name: 
// Module Name: neg_edge_detector
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


module neg_edge_detector(input signal,clk,
output edge_detect

    );
    reg signal_dly;
always @(posedge clk)
begin signal_dly<=signal;
end
assign edge_detect = ~signal & (signal_dly);

    
endmodule
