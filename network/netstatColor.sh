#!/bin/bash

cyan="\E[1;36m\E[1m";
normal="\E[m";
blue="\E[34m\E[1m";
violet="\E[35m\E[1m";
red="\E[31m\E[1m";
yellow="\E[33m\E[1m";
green="\E[37m\E[32m\E[1m";
text="\E[1;37m\E[1m";
 
if [ "$UID" != "0" ]; then
    echo -e "$red$0: You will get more information if you have root privileges. Try sudo $0$normal"
fi
 
netstat -natp | \
while read line; do
 
    if [ `echo $line | awk '{print($1)}'` = "Proto" ]; then
        echo -e "$yellow=====================================================================================================$normal"
        echo -e "$text$line$normal"
        echo -e "$yellow=====================================================================================================$normal"
    else
 
        state=`echo $line | awk '{print($6)}'`
        color=$normal
        case $state in
            "ESTABLISHED")
                color=$green;;
            "SYN_SENT" | "SYN_RECV")
                color=$yellow;;
            "FIN_WAIT1" | "FIN_WAIT2" |"TIME_WAIT")
                color=$violet;;
            "CLOSE" | "CLOSE_WAIT" | "LAST_ACK" | "CLOSING" )
                color=$blue;;
            "LISTEN")
                color=$cyan;;
            "UNKNOWN")
                color=$red;;
            *)
        esac
        echo -e "$color$line$normal"
 
    fi
done;
