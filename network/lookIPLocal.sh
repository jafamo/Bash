#!/bin/bash

# Author:	jafamo
#
# Description:	This script needs "sudo" or account root execute.
#		It is for local IP (192.168.x.x)
#
#

ifconfig |grep "inet addr:" |awk '{print $2}' | grep -v "127.0.0.1" |cut -f2 -d:
