#!/bin/bash

# Ruta del archivo temporal
IMG="/tmp/ocr_screenshot.png"

# Borrar imagen anterior si existe
rm -f "$IMG"

# Lanzar spectacle para capturar una región y guardar directamente
spectacle -b -r -o "$IMG"

# Esperar a que el archivo aparezca
for i in {1..10}; do
    if [ -f "$IMG" ]; then
        break
    fi
    sleep 1
done

# Verificar si se creó la imagen
if [ ! -f "$IMG" ]; then
    notify-send "OCR" "No se capturó la imagen"
    exit 1
fi

# Ejecutar OCR con tesseract
TEXT=$(tesseract "$IMG" stdout --oem 1 --psm 6 -l spa+eng -c preserve_interword_spaces=1 2>/dev/null)

# Verificar si hay texto y copiar al portapapeles
if [[ -n "$TEXT" ]]; then
    echo "$TEXT" | xclip -selection clipboard
    notify-send "OCR" "Texto copiado al portapapeles"
else
    notify-send "OCR" "No se detectó texto"
fi
