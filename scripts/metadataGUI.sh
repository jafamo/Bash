#!/bin/bash

# GUI script created by Jafamo
#
# You need install package:
# 	libimage-exiftool-perl
#
# Created file info.txt with information metadata $1
#

name=$(zenity --file-selection --title="Select image")
echo
echo $name
echo 
#echo "Introduce name of image: " 
#read name

case $? in 
		0)
			echo "\"$name\" ha sido seleccionado."
			exiftool -a $name > info.txt
			echo "Created information in info.txt"
			;;

		1)
			echo "You do not select image"
			;;

		-1)
			echo "Error!!! "
			;;
esac
