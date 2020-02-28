#!/bin/bash

fname=$1
field=$2
echo $1
echo $2
gnuplot -persist <<PLOT

#set term wxt
set term png
set pm3d
unset surface
set view map
set xrange [100:2000]
# set view equal xy
#set size ratio -1
set output "$fname.png"
# replot
splot '$fname' us 1:2:$field 
PLOT
