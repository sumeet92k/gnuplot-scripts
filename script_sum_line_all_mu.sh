#!/bin/bash

# this is for plotting profiles in 3d view on shakuntala as it doesnt have wxt terminal
# echo "Hello World!"
arg1=$1
arg2=$2
arg3=$3
# FILES=$(ls Cu_[1-5]000.dat)
# echo $FILES
if [ "$arg2" = "mu0" ]
then
	arg_plot_no=3
elif [ "$arg2" = "mu1" ]
then
	arg_plot_no=4
elif [ "$arg2" = "phi0" ]
then
	arg_plot_no=5
elif [ "$arg2" = "phi1" ]
then
	arg_plot_no=5	
elif [ "$arg2" = "phi2" ]
then
	arg_plot_no=7
elif [ "$arg2" = "temp" ]
then
	arg_plot_no=8
elif [ "$arg2" = "comp0" ]
then
	arg_plot_no=9
elif [ "$arg2" = "comp1" ]
then
        arg_plot_no=10
else 
	echo "******ERROR:INPUT ARGUMENT TO PLOT MISSING********"
fi

gnuplot -persist <<PLOT

#set multiplot
#set term wxt
#set xrange [0:200]
plot '$arg1' u 1:$arg_plot_no every :::$arg3::$arg3 w lp


#set pm3d 
#unset surface
#set view 0,0
#set size ratio -1
#set view equal xy
#set xrange [0:99]
#set yrange [0:99]
#set format cb "%3.1f"
#set cbrange [0:1]
#My old color style
# set palette defined (-0.00000 "red", 0.5 "green", 1 "blue")
#Gray scale color style
# set palette rgbformulae 30,31,32
#Matlab color style
#set palette rgbformulae 21,22,23
#splot 'Al_100000.dat' us 1:2:3
#replot
#set palette rgbformulae 30,31,32
#splot '$arg1' us 1:2:$arg_plot_no

# splot '$FILES' us 1:2:3 
# set palette rgbformulae 21,22,23
# splot 'beta_2000.dat' us 1:2:3

# create an image file
#set term png
# set terminal postscript eps enhanced color "Helvetica, 20"
# set xlabel font "Helvetica,24,bold"
# set ylabel font "Helvetica,24,bold"
# set title "Theoretical predictions of Undercooling vs Spacing"
# set xtics font "Helvetica,24,bold"
# set ytics font "Helvetica,24,bold"
# set output "line_mu1.png"
# replot

# remove all customization:
# reset
# set terminal x11

#unset multiplot
PLOT
