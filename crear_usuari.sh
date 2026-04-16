#!/bin/bash

# Limpiamos la pantalla para mejorar la presentación
clear

# Pedimos el nombre de usuario
read -p "Introduce el nombre de usuario: " USUARIO

# Pedimos el nombre completo o comentario
read -p "Introduce el nombre completo: " COMENTARIO

# Pedimos el nombre del grupo
read -p "Introduce el nombre del grupo: " GRUPO

# Comprobamos que las variables no estén vacías
if [ -z "$USUARIO" ] || [ -z "$COMENTARIO" ] || [ -z "$GRUPO" ]; then
    echo "Error: no se pueden dejar campos vacíos."
    exit 1
fi

# Comprobamos si el grupo existe, y si no existe lo creamos
if ! getent group "$GRUPO" > /dev/null; then
    sudo groupadd "$GRUPO"
fi

# Creamos el usuario con su comentario y grupo principal
sudo useradd -m -c "$COMENTARIO" -g "$GRUPO" "$USUARIO"

# Mostramos mensaje final
echo "L'usuari $USUARIO s'ha creat correctament dins del grup $GRUPO"