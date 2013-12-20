#! /bin/sh

# cantidad de usuarios conectados 
uconn=`who | wc -l | sed 's/^ *//g'`
# cantidad de usuarios reales 
ureal=`who | cut -f1 -d ' ' | sort -u | wc -l | sed 's/^ *//g'`  

# mostrar usuarios con el num. de veces que esta conectado 
who | cut -f1 -d ' ' | uniq -c | sort | sed 's/^ *//g'

# explicacion (para el que no entienda)
# who			mostrar todos los usuarios
# cut -f1 -d ' '	obtener solo los nombres
# uniq -c		obtener cantidad de repeticiones
# sort			ordenar por numero de conexiones
# sed 's/^ *//g'	eliminar espacios en blanco al
#			al principio de la linea. 
#			eso es para todo, ya que algunos
#			programas mantienen un largo numerico
#			para mostrar en la salida. 

# imprimir informacion
echo "connected: $uconn"
echo "reales   : $ureal"
