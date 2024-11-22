class mem_gen;
	mem_tx tx,tx_t;

	task run();
    	repeat(10) begin
		tx=new();
		tx.randomize() with {tx.wr_rd==1;};
		tx_t=new tx;
		common::mbox.put(tx);
		tx=new();
		tx.randomize() with {tx.wr_rd==0;tx.addr==tx_t.addr;};
		common::mbox.put(tx);
		end
	endtask

endclass
