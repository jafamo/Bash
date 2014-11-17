#!/bin/bash

    echo '*********************'
    echo '*****youtube2MP3*****'
    echo '*******by fal********'
    echo '*********************'

    CODIGO=”
    echo -n ‘ingrese codigo: ‘
    read CODIGO

    NOMBRE=”
    echo -n ‘ingrese nombre para el mp3: ‘
    read NOMBRE

    echo ”
    echo ‘empezado la descarga…’
    echo ”

    youtube-dl http://www.youtube.com/watch?v=${CODIGO}

    ffmpeg -i ${CODIGO}.flv -f mp3 “${NOMBRE}”.mp3
    rm ${CODIGO}.flv

    echo ‘el proceso termino…’
    echo