#!/bin/bash

##Colores en la shell:
AMLLO="\033[1;33m"
ROJO="\033[0;31m"
VERDE="\033[0;32m"
AZUL="\033[34m"
CIAN="\033[36m"
FINCOL="\033[0m"

IP=`ip a show|grep -w inet|grep -vw lo|cut -d' ' -f6|awk 'BEGIN{FS="."}{gsub($4,"1");print}'`; ##reemplazamos nuestra IP por 1
RED=`ip a show|grep -w inet|grep -vw lo|cut -d' ' -f6|awk 'BEGIN{FS="/"}{print $2;}'`;

echo -e $VERDE"Mi IP local:$(ip a show|grep -w inet|grep -vw lo|cut -d' ' -f6|awk 'BEGIN{FS="/"}{print $1;}')";
echo -e $ROJO'Parámetros de la búsqueda...';
echo -e $VERDE"Rango IP local:${IP}";
echo -e "Subred:${RED}"$FINCOL;
nmap -sP "${IP}/${RED}";
echo '';
echo -e $AMLLO'Repetimos el escaneado de la subred...'$FINCOL;
nmap -sP "$(ip a show|grep -w inet|grep -vw lo|cut -d' ' -f6|sed 's/\.[0-9]\{1,3\}\//\.1\//')"; ##solucion con sed
