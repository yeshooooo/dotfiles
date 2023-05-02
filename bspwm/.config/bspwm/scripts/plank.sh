#!/bin/bash


ps -ef | grep cairo-dock | grep -v grep
if [ $? -ne 0 ]; 
then
	plank -n primdock
fi
