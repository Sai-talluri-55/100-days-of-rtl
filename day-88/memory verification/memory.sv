module memory(clk_i,rst_i,addr_i,wr_rd_i,wdata_i,valid_i,rdata_o,ready_o);
parameter WIDTH=32;
parameter DEPTH=512;
//parameter ADDR_WIDTH=$clog2(DEPTH);
parameter ADDR_WIDTH=$clog2(DEPTH);
input clk_i,rst_i,valid_i,wr_rd_i;
input [ADDR_WIDTH-1:0]addr_i;
input [WIDTH-1:0]wdata_i;
output reg [WIDTH-1:0]rdata_o;
output reg ready_o;
integer i;
reg [WIDTH-1:0] mem[DEPTH-1:0];
	
	always@(posedge clk_i)begin
		if(rst_i)begin
			ready_o=0;
			rdata_o=0;

			for(i=0;i<WIDTH;i=i+1) begin
				mem[i]=0;
			end
		end
		else begin
			if(valid_i)begin
				ready_o=1;
					if(wr_rd_i)begin
						mem[addr_i]=wdata_i;
					end
					else begin
						rdata_o=mem[addr_i];
					end
			end
			else begin
				ready_o=0;
			end
		end
	end
endmodule


