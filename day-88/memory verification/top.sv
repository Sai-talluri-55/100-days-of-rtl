`include "common.sv"
`include "memory.sv"
`include "mem_tx.sv"
`include "mem_intf.sv"
`include "mem_gen.sv"
`include "mem_bfm.sv"
`include "mem_mon.sv"
`include "mem_cov.sv"
`include "mem_agent.sv"
`include "mem_env.sv"

module top;
	bit clk,rst;
    mem_env  env=new();
	//interface
	mem_intf pif(clk,rst);
	//dut instantiation
	memory dut(
	.clk_i  (pif.clk_i),
	.rst_i  (pif.rst_i),
	.addr_i (pif.addr_i),
	.wr_rd_i(pif.wr_rd_i),
	.wdata_i(pif.wdata_i),
	.rdata_o(pif.rdata_o),
	.valid_i(pif.valid_i),
	.ready_o(pif.ready_o)
	);
	///clock  generation
	initial begin
	clk=0;
	end
	always #5 clk=~clk;
	//rst generation
	initial begin
		rst=1;
		repeat(2) @(posedge clk);
		rst=0;
		env.run();
	end
	//function logic
	initial begin
	wait(common::finish.triggered());
	repeat(2) @(posedge clk);
	  $finish;
	end

endmodule
