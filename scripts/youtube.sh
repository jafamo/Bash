#!/bin/bash
cd ~/Videos/YouTube/
/usr/bin/youtube-dl -c -t $1
echo
echo
ls -lht | head -2 | grep total -v
cd --
exit
