`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.12.2023 20:50:34
// Design Name: 
// Module Name: moore_nonoverlap
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


module moore_nonoverlap(

    input din,
    input clk,
    input rst,
    output reg y
    );
    reg [2:0] ps,ns; 
    parameter [2:0]s0=3'b000; 
    parameter [2:0]s1=3'b001;
    parameter [2:0]s2=3'b010;
    parameter [2:0]s3=3'b011; 
    parameter [2:0]s4=3'b100;
    always@(posedge clk) 
    begin 
        if(rst) 
            begin 
                ps<=s0; 
                
            end
            else
            ps<=ns;
            end
        always @(ps or din)
            begin 
                case(ps)
                s0:begin 
                    y<=1'b0;
                    if(din) 
                        ns<=s1; 
                    else 
                        ns<=s0;
                   end
                
                s1:begin 
                    y<=1'b0;
                    if(din) 
                        ns<=s1; 
                    else 
                        ns<=s2;
                   end
                 s2:begin 
                    y<=1'b0;
                    if(din) 
                        ns<=s3; 
                    else 
                        ns<=s0;
                   end
                  s3:begin 
                    y<=1'b0;
                    if(din) 
                        ns<=s1; 
                    else 
                        ns<=s4;
                   end
                  s4:begin 
                    y<=1'b1;
                    if(!din) 
                        ns<=s0; 
                    else 
                        ns<=s1;
                    end
                  default:begin 
                        y<=1'b0; 
                        ns<=s0;
                  end
                endcase
            end
    
endmodule
