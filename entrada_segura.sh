#!/bin/bash

# Variable para guardar la ruta introducida
ruta=""

# Bucle until: se repite hasta que la ruta exista
until [ -e "$ruta" ]; do
    read -p "Introdueix una ruta vàlida (o escriu 'sortir' per acabar): " ruta

    # Si el usuario escribe "sortir", el script termina
    if [ "$ruta" = "sortir" ]; then
        exit 0
    fi

    # Si la ruta no existe, mostramos error
    if [ ! -e "$ruta" ]; then
        echo "La ruta no és vàlida, torna-ho a intentar."
    fi
done

# Pedimos un número para la simulación
read -p "Introdueix un número per iniciar el compte enrere: " num

# Validamos que el valor introducido sea numérico
if ! [[ "$num" =~ ^[0-9]+$ ]]; then
    echo "Error: has d'introduir un valor numèric."
    exit 1
fi

# Bucle while: cuenta atrás hasta cero
while [ "$num" -ge 0 ]; do
    echo "Processant l'element en $num segons..."
    num=$((num - 1))
done