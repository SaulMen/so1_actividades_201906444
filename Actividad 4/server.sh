#!/bin/bash


PIPE=chatGuestServer


if [[ ! -p $PIPE ]]; then
    mkfifo $PIPE
fi


while true; do

    read message < $PIPE
    # Mostrar mensaje del cliente
    echo "[Cliente]: $message"
done
