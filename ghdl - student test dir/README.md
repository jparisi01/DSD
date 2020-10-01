# Test Directory
This contains various vhdl files and directories for practicing VHDL design
Files with names ending in '_tb' are test benches for their corresponding VHDL designs

How to run using GHDL and GTKWave, with 'adder' as an exmaple:

```
ghdl -a adder.vhdl
ghdl -a adder_tb.vhdl
ghdl -e adder_tb
ghdl -r adder_tb --vcd=adder.vcd
gtkwave adder.vcd
```