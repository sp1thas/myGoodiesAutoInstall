#!/bin/bash

#Author: Simakis Panagiotis sp1thas@autistici.org

# this function install the packages
function INSTALL (){
	#Declare some variables
	declare -r DISTRO=$1
	declare -r PACKAGEMANAGER
	declare -r BASICPROGRAMMS="filezilla"
	echo $DISTRO
	if [ $DISTRO == "debian" ]
	then
		$PACKAGEMANAGER = "apt-get install"
		$BASICPROGRAMMS = $BASICPROGRAMMS " gdebi"
		echo $BASICPROGRAMMS
	elif [ $DISTRO == "arch" ]
	then
		$PACKAGEMANAGER = "pacman -S"
	fi
	#-----------------------------------------------
	echo "Do you want to install basic programms?"
	read OPTION
	if [ $OPTION == "y" ] || [ $OPTION == "Y" ]
	then
		if [ $DISTRO == "arch" ]
		then
			echo $PACKAGEMANAGER $BASICPROGRAMMS
		fi
	fi
}

if [ $1 == "-h" ]
then
	echo "help page goes here"
elif [ $1 == "-d" ]
then
	INSTALL $2
fi
