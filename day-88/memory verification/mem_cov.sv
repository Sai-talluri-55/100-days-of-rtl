class mem_cov;
 mem_tx tx;
  covergroup cg;
  addr: coverpoint tx.addr{
    option.auto_bin_max=4;
  }
  wr_rd: coverpoint tx.wr_rd{
         bins bin1={1'b0};
		 bins bin2={1'b1};
  }
  endgroup
  function new();
    cg=new();
  endfunction

 task run;
 forever begin
    common::mon2cov.get(tx);tx.print;

	cg.sample();
	end
 endtask
endclass
