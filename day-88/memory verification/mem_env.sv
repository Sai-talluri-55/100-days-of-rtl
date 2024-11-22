class mem_env;
	mem_agent agent;
	mem_mon mon;
	mem_cov cov;
	function new();
		agent=new();
		mon=new();
		cov=new();
    endfunction

	task run();
	fork
	  agent.run();
	  mon.run();
	  cov.run();
	 join
	endtask

endclass
