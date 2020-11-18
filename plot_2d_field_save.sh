#!/bin/bash

fname=$1
field=$2
echo $1
echo $2
suffix=".dat"
fname_out=${fname%"$suffix"}.png
gnuplot -persist <<PLOT

#set term wxt
set term png
set pm3d
unset surface
set view map
set xrange [0:200]
# set view equal xy
set size ratio -1
set output "$fname_out"
# replot
splot '$fname' us 1:2:(\$5+2*\$6+3*\$7) 
PLOT
