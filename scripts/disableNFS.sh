#!/bin/sh
# 
#@author: jafamo
#
# This script disable NFS service and rcpbind for Debian.
#  NFS listen in this case port:33899
#  rcpbind listen in port:111 


sudo service nfs-common stop
sudo service rpcbind stop

#If you want disable forever:

#update-rc.d nfs-common disable
#update-rc.d rpcbind disable
