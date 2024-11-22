`define req_tp 10
module assertion(clk_i,rst_i,addr_i,wdata_i,rdata_o,wr_rd_i,valid_i,ready_o);
input clk_i,rst_i,valid_i,wr_rd_i;
input [`addr_width-1:0] addr_i;
input [`width-1:0]wdata_i;
input [`width-1:0] rdata_o;
input ready_o;

property clk_freq_chk;
	real prev_clk_edge;
	@(posedge clk_i) (1,prev_clk_edge=$realtime) |=> (($realtime-prev_clk_edge)==`req_tp);
endproperty

property rst_applied_chk;
	@(posedge clk_i) (rst_i==1) |=> (rdata_o==0) &&(ready_o==0);
endproperty


property handshake_chk;
	@(posedge clk_i) valid_i |=> ready_o;
endproperty

handshake_chk_assert: assert property (handshake_chk);
rst_applied_clk_assert: assert property (rst_applied_chk);
clk_freq_chk_assert: assert property (clk_freq_chk);
endmodule
