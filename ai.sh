#!/bin/bash

# Script para actualizar el sistema e instalar paquetes recibidos por parámetro

# Comprobamos si se ha pasado algún parámetro
# "then" nos sirve para esa comunicación con el usuario
if [ $# -eq 0 ]; then
    echo "Uso: ./ai.sh paquete1 paquete2 ..."
    exit 1
fi

echo "Actualizando la lista de paquetes..."
sudo apt update

echo "Actualizando los paquetes del sistema..."
sudo apt upgrade -y

# $@ utiliza el parametro del usuario 

echo "Instalando paquetes: $@"
sudo apt install -y "$@"

echo "Proceso completado correctamente."