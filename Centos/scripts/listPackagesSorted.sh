#!/bin/bash

#@uthor: jafamo
#
#
#source: https://centoshelp.org/resources/commands/rpm-commands/

#Make a text file of all the packages currently installed on the 
#system sorted alphabetically:

rpm -qa | sort -d | uniq > all_packages.csv
