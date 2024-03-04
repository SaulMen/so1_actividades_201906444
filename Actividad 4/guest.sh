#!/bin/bash

PIPE=chatGuestServer

# Crear si no existe
if [[ ! -p $PIPE ]]; then
    mkfifo $PIPE
fi


while true; do

    read message
    # Enviar al servidor
    echo "$message" > $PIPE
done
