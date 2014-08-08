#!/bin/bash
#
# @author: jafamo
#
# required:
# Install package lsb-core
#

lsb_release -a
echo "-----"
echo " Info System"
uname -a
echo " Info Memory"
echo "-----"
free -m
echo "\n Info OPEN PORTS"
echo "-----"
echo " Info System"
netstat -tulpn



