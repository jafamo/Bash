#!/bin/bash

# GUI script created by Jafamo
#
# You need install package:
# 	libimage-exiftool-perl
#
# Created file info.txt with information metadata $1
#

commando=$(which exiftool>>/tmp/comando)
cat /tmp/comando
 
if [ -s $comando ]; then
	echo "You have the exiftool"
else
	echo "You need install exiftool"
	exit 0;
fi

	name=$(zenity --file-selection --title="Select image")
	echo
	echo $name
	echo 
	#echo "Introduce name of image: " 
	#read name

case $? in 
		0)
			echo "\"$name\" It's exist."
			exiftool -a $name > info.txt
			echo "Created information in info.txt"
			;;

		1)
			echo "You don't select image"
			;;

		-1)
			echo "Error!!! "
			;;
esac
