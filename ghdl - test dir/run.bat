:: author : Jake Foglia
:: 
:: batch script to quickly compile using ghdl and run using gtkwave
:: takes 1 argument, the name of the vhdl file with no extensions
:: there must be a corresponding test bench with the same name with _tb at the end

@echo off
rm *.vcd
rm *.cf

ghdl -a %1.vhdl
ghdl -a %1_tb.vhdl
ghdl -e %1_tb
ghdl -r %1_tb --vcd=%1.vcd
gtkwave %1.vcd

