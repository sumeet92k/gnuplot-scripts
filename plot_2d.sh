#!/bin/bash

fname=$1
field=$2
echo $1
echo $2
gnuplot -persist <<PLOT

#set term wxt
#set term png
set pm3d
unset surface
set view map
#set xrange [0:200]
# set view equal xy
set size ratio -0.15
#set size ratio -1
#set output "comp_20L.png"
# replot
splot '$fname' us 1:2:$field 
PLOT
