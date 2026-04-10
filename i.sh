#!/bin/bash

#Script para actualizar el sistema e instalar paquetes 

#Aquí añadimos la variable de los paquetes
PAQUETS="vim git curl" 
#echo para mostrar por consola el proceso
echo " Actualizando la lista de paquetes..."
sudo apt update 
#-y para que no tenga que confirmar el usuario
echo " Actualizando los paquetes del sistema..." 
sudo apt upgrade -y
# $PAQUETS para mostrar la mariable en el echo
echo "Instalando paquetes: $PAQUETS"
sudo apt install -y $PAQUETS

echo "Proceso completado correctamente." 