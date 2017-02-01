#!/bin/bash

if [ $1 == "-h" ]; then
	echo "help page goes here"
elif [ $1 == "-arch" ]; then
	$PACKAGEMANAGER="pacman"
fi


function INSTALL {
	echo $1
}
