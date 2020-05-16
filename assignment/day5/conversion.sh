#!/bin/bash -x

	feet=12;
	echo "1feet = 12 inch "
	echo  "1feet = 0.3048ms "

	ans=$(( 42/$feet ));
	echo "42 inches approximately equal to " $ans " feet"

   echo "Rectangular plot 60feet X 40feet   in meters"

	ft_m=1;
	l=60;
	b=40;
	plotArea=$(( l*ft_m * b*ft_m ));
	echo "scale =2; 15/2" | bc

	echo "PlotArea= " $plotArea " in sqmeter"


	nu_plots=25;
	Total_Area=$(( plotArea*nu_plots ))
	echo $Total_Area " sqmeter";
