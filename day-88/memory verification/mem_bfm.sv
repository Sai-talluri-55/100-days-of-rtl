class mem_bfm;
	mem_tx tx;
	virtual mem_intf vif;
	function new();
	vif=top.pif;
	endfunction

	task run();
	forever begin
	   //wait(common::mbox.num()!=0);
		common::mbox.get(tx);
	//	$display("%0d",vif.bfm_cb.clk_i);
		tx.print();
		drive_tx(tx);
		common::drivedone=common::mbox.num();
		if(common::drivedone==0) ->common::finish;
	end
	endtask
    task drive_tx (mem_tx tx);
	 @(vif.bfm_cb);
		vif.bfm_cb.addr_i<=tx.addr;
		vif.bfm_cb.wr_rd_i<=tx.wr_rd;
		if(tx.wr_rd==1)vif.bfm_cb.wdata_i<=tx.data;
		vif.bfm_cb.valid_i<=1'b1;
		wait(vif.bfm_cb.ready_o==1);
		
		vif.bfm_cb.addr_i<=0;
		vif.bfm_cb.wdata_i<=0;
		vif.bfm_cb.valid_i<=0;
	endtask
endclass
