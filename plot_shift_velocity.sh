#!/bin/bash

fname=$1
#field=$2
echo $1
#echo $2
gnuplot -persist <<PLOT

# derivative functions.  Return 1/0 for first point, otherwise delta y or (delta y)/(delta x)
deltat = 0.075
deltax = 1.7

d2(x,y) = (\$0 == 0) ? (x1 = x, y1 = y, 1/0) : (x2 = x1, x1 = x, y2 = y1, y1 = y, (y1-y2)*deltax/( (x1-x2)*deltat ))

set term wxt
#set term png
#set pm3d
#unset surface
#set view map
#set xrange [400:1200]
set yrange [0.001:0.03]
# set view equal xy
#set size ratio -1
#set output "comp_20L.png"
# replot
#plot '$fname' us 1:3 w l
plot '$fname' us 1:(d2(\$1,\$3)) w l title 'velocity = 0.0125'
PLOT
