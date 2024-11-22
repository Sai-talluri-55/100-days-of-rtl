class mem_tx;
	rand bit wr_rd;
	rand bit [`addr_width-1:0]addr;
	rand bit [`width-1:0]data;
	    // bit [`width-1:0]rdata;
		 //bit 	valid;
		 //bit 	ready;

	function void print();
		$display("addr=%0h",addr);
		$display("data=%0h",data);
		$display("wr_rd=%0b",wr_rd);
	//	$display("rdata=%0d",rdata);
	//	$display("valid=%0d",valid);
	//	$display("ready=%0d",ready);

	endfunction
endclass
