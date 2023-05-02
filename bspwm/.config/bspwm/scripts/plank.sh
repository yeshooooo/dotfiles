#!/bin/bash


while true
do

ps -ef | grep bspwm | grep -v grep
if [ $? -ne 0 ]; 
then
	echo "bspwm not start";
else
	plank -n primdock;
	break;
fi
done
