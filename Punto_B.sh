#!/bin/bash

USUARIO_BASE=$1
ARCHIVO_LISTA=$2

CLAVE=$(sudo grep "^$USUARIO_BASE:" /etc/shadow | cut -d ':' -f2)

while IFS=',' read USUARIO GRUPO HOME_USUARIO
do
    if [[ "$USUARIO" != \#* ]] && [[ -n "$USUARIO" ]]
    then
        sudo groupadd -f "$GRUPO"
        sudo useradd -m -d "$HOME_USUARIO" -g "$GRUPO" -p "$CLAVE" "$USUARIO"
    fi
done < "$ARCHIVO_LISTA"
