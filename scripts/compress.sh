#!/bin/bash
# shellscript created by Jafamo

#Instructios:
#Introduce directory for backup and  create directory backup.tar.gz
# 
# Name of script: .compress.sh 
# @param1: dir   (It is a directory for compress)
# @param2: name	 (it is a name of file.tar.gz)
#
# .compresh.sh dir name
#

#test 2 args
if [ "$#" != 2 ]; then
	echo "you need 2 arguments."
	echo "1.- Directory for compress and 2.- name backup"

	echo -n "Introduce directory for backup: "
	read dir

	echo -n "Introduce the name of file backup: "
	read name
fi
tar cvf $name.tar
gzip $name.tar.gz

