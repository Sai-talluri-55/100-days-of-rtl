class mem_agent;
	mem_gen gen;
	mem_bfm bfm;
//	mem_mon mon;
//	mem_cov cov;
	function new();
		gen=new();
		bfm=new();
//		mon=new();
//		cov=new();
	endfunction
	task run();
	  fork
	  	gen.run();
	  	bfm.run();
//	  	mon.run();
//	  	cov.run();
	  join
	endtask

endclass
