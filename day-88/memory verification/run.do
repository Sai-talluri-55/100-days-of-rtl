
vlog top.sv
vopt top +cover=fcbest -o test
vsim -coverage test -novopt -suppress 12110 
coverage save -onexit test.ucdb
add wave -position insertpoint sim:/top/dut/*
run -all
#vlog top.sv
#vopt +cover 
#vsim -novopt -suppress 12110 top
#add wave -position insertpoint sim:/top/dut/*
#do wave.do
#run -all
