interface mem_intf(input bit clk_i,rst_i);
bit [`addr_width-1:0]addr_i;
bit 	wr_rd_i;
bit [`width-1:0]wdata_i;
bit [`width-1:0]rdata_o;
bit 	valid_i;
bit 	ready_o;
 clocking mon_cb @(posedge clk_i);
 default input #0; 
input addr_i;
input 	wr_rd_i;
input wdata_i;
input rdata_o;
input 	valid_i;
input 	ready_o;
endclocking 
clocking bfm_cb @(posedge clk_i);
default input #0 output #1;
output valid_i,wr_rd_i;
output addr_i;
output wdata_i;
input rdata_o;
input ready_o;
endclocking

endinterface
