#!/bin/bash

#ApacheTop como su nombre indica es una mezcla entre el comando Top 
# pero especifico para el servidor web apache. Una vez ejecutado 
# podemos ver a tiempo real la ultima vez que apache sirvió contenido, 
# tiempo que lleva ejecutado el programa, peticiones por segundo, 
# bytes enviados, recibidos y como no una lista a tiempo real sobre 
# los procesos que va lanzando Apache. Excelente para ver a simple vista 
# que se cuece dentro de nuestro servidor web. Siempre podríamos ver 
# lo que pasa lanzando el comando Tail -f pero ApacheTop nos lo ofrece 
# mucho mas claro, con menos detalles pero mas claro.
#
#

apachetop -f /var/log/apache2/access.log
