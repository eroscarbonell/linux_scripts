#!/bin/bash

# Función que recibe un nombre y muestra un saludo personalizado
benvinguda() {
    local nom="$1"
    echo "Hola $nom, anem a comprovar el sistema"
}

# Función que comprueba si un usuario existe en /etc/passwd
comprova_usuari() {
    local usuari="$1"

    if grep -q "^$usuari:" /etc/passwd; then
        echo "L'usuari $usuari existeix al sistema"
    else
        echo "L'usuari $usuari no existeix al sistema"
    fi
}

# Función que muestra el espacio libre de la partición principal
calculadora_espai() {
    echo "Espai lliure de la partició principal:"
    df -h /
}

# Parte principal del script
read -p "Introdueix el teu nom: " alumne
benvinguda "$alumne"

read -p "Introdueix un nom d'usuari del sistema: " usuari
comprova_usuari "$usuari"

calculadora_espai