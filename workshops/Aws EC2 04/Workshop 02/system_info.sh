#!/bin/bash

# Ruta a analizar: primer argumento, o / si no se recibe
RUTA="${1:-/}"

if [ ! -e "$RUTA" ]; then
    echo "Error: la ruta '$RUTA' no existe"
    exit 1
fi

echo "Hostname: $(hostname)"
echo "Usuario: $(whoami)"
echo "Fecha: $(date)"
echo "Uptime:"
uptime

echo "Ruta analizada: $RUTA"
echo "Filesystem donde se encuentra:"
df -hT "$RUTA"

echo "Punto de montaje: $(df --output=target "$RUTA" | tail -1)"
echo "Espacio usado por la ruta: $(du -sh "$RUTA" 2>/dev/null | cut -f1)"

echo "Inodos:"
df -i "$RUTA"

echo "Memoria:"
free -h
