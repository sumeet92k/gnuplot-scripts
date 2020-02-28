#!/bin/bash

fname=$1
#field=$2
echo $1
#echo $2
gnuplot -persist <<PLOT

set term wxt
#set term png
#set pm3d
#unset surface
#set view map
#set xrange [400:1200]
# set view equal xy
#set size ratio -1
#set output "comp_20L.png"
# replot
plot '$fname' us 1:3 w l
PLOT
