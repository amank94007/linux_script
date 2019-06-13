#! /bin/bash
rm -f object_file dump.lx2
iverilog $1 -o object_file
vvp object_file -lxt2
gtkwave dump.lx2
rm -f object_file dump.lx2
