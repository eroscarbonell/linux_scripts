#!/bin/bash

# Pedimos la ruta al usuario
read -p "Introduce la ruta de un fichero o directorio: " RUTA

# Comprobamos si la variable está vacía
if [ -z "$RUTA" ]; then
    echo "No has introduït cap ruta"
    exit 1
fi

# Comprobamos si la ruta existe
if [ -e "$RUTA" ]; then

    # Comprobamos si es un fichero regular
    if [ -f "$RUTA" ]; then
        echo "L'element $RUTA existeix i és un fitxer"
    fi

    # Comprobamos si es un directorio
    if [ -d "$RUTA" ]; then
        echo "L'element $RUTA existeix i és un directori"
    fi

    # Comprobamos permisos de lectura
    if [ -r "$RUTA" ]; then
        echo "Tens permisos per llegir aquest element"
    else
        echo "No tens permís de lectura"
    fi

else
    echo "Error: La ruta $RUTA no es troba en el sistema"
fi