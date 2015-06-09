#!/bin/bash

# Dependencias:
    # ffmepg
    # youtube-dl

    echo "Solo se necesita el codigo que sale en la url del video"
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