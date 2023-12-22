`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.12.2023 20:32:21
// Design Name: 
// Module Name: round_robin_arbiter
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


module round_robin_arbiter(
		input clk, rst,
		input [3:0] request,
		output reg [3:0] grant
		);

	reg [2:0] ps,ns;
  
	parameter [2:0] ideal = 3'b000;
	parameter [2:0] s0 = 3'b001;
	parameter [2:0] s1 = 3'b010;
	parameter [2:0] s2 = 3'b011;
	parameter [2:0] s3 = 3'b100;

  always @ (posedge clk or posedge rst)
		begin
         if(rst)
			ps <= ideal;
		 else
			ps <= ns;
		end
  always @(*) 
		begin
			case(ps)
				ideal : begin
							if(request[0]) ns = s0;
							else if(request[1]) ns = s1;
							else if(request[2]) ns = s2;
							else if(request[3])	ns = s3;
							else ns = ideal;		
						end 
				s0 : begin
							if(request[1])ns = s1;
							else if(request[2])ns = s2;
							else if(request[3])ns = s3;
							else if(request[0])ns = s0;
							else ns = ideal;
						end 
				s1 : begin
							if(request[2]) ns = s2;
							else if(request[3]) ns = s3;
							else if(request[0]) ns = s0;
							else if(request[1]) ns = s1;
							else ns = ideal;
						end 
				s2 : begin
							if(request[3]) ns = s3;
							else if(request[0]) ns = s0;
							else if(request[1]) ns = s1;
							else if(request[2]) ns = s2;
							else ns = ideal;
						end 
				s3 : begin
							if(request[0]) ns = s0;
							else if(request[1]) ns = s1;
							else if(request[2]) ns = s2;
							else if(request[3]) ns = s3;
							else ns = ideal;
						end 
				default : begin
							if(request[0]) ns = s0;
							else if(request[1]) ns = s1;
							else if(request[2]) ns = s2;
							else if(request[3]) ns = s3;
							else ns = ideal;
						end 
			endcase 
	 end

  always @(*) 
		begin
          case(ps)
				s0 : begin grant = 4'b0001; end
				s1 : begin grant = 4'b0010; end
				s2 : begin grant = 4'b0100; end
				s3 : begin grant = 4'b1000; end
			default : begin grant = 4'b0000; end
		  endcase
		end
endmodule 


