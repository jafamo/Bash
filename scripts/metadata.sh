# script created by Jafamo
#
# You need install package:
# libimage-exiftool-perl
#
# Created file info.txt with information metadata $1
#
echo "Introduce name of image: "
read name
exiftool -a $1 > info.txt
echo "File info.txt created."
