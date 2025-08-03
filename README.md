# 🖼️ OCR Capture Plasma

Una utilidad rápida y minimalista para **capturar una región de la pantalla y extraer texto mediante OCR**, integrada con KDE Plasma y activada con un atajo de teclado global.

Inspirado en la herramienta **PowerToys Text Extractor** de Windows.

---

## 🚀 ¿Qué hace?

Con solo presionar `Meta + Shift + T`:

1. Seleccionás una región de la pantalla.
2. Se captura una imagen temporal.
3. Se procesa con OCR usando **Tesseract**.
4. El texto extraído se copia automáticamente al portapapeles.
5. Recibís una notificación del resultado.

Todo en segundos, sin depender de interfaces gráficas pesadas.

---

## ⚙️ Requisitos

Asegurate de tener instaladas estas herramientas:

| Herramienta  | Descripción                      |
|--------------|----------------------------------|
| `spectacle`  | Capturador de pantalla de KDE    |
| `tesseract`  | Motor OCR de código abierto      |
| `xclip`      | Utilidad para copiar al portapapeles |
| `notify-send`| Notificaciones en KDE (incluido por defecto) |

### Instalar dependencias


#### Distros basadas en Debian  (Ubuntu, Mint, Elementary, MX, PopOS )

```bash
sudo apt update
sudo apt install spectacle tesseract-ocr tesseract-ocr-spa tesseract-ocr-eng xclip
```

#### Fedora
```bash
sudo dnf install spectacle tesseract tesseract-langpack-spa tesseract-langpack-eng xclip
```

#### Distros Arch / Manjaro
```bash
sudo pacman -Sy spectacle tesseract tesseract-data-spa tesseract-data-eng xclip

```
---
## 📥 Instalación

### Descarga el script: 

 ```bash
curl -O https://raw.githubusercontent.com/lexapaga/OCR-Capture-Plasma/main/ocr_capture.sh
chmod +x ocr_capture.sh
mv ocr_capture.sh ~/.local/bin/
```
### Crea un atajo de teclado en KDE:

- Abrí Preferencias del sistema → Atajos de teclado
- Seleccioná "Editar → Añadir → Atajo personalizado"
- Tipo: Lanzar aplicación
- Comando: ~/.local/bin/ocr_capture.sh
- Atajo: Meta + Shift + T
- Aplicar

**¡Listo! Ahora puedes usar el OCR en plasma como si fuera PowerToys.**

## 🧾 Changelog

Mira el [CHANGELOG.md](CHANGELOG.md) para ver los detalles de cada versión.
## 📝 Licencia

Este proyecto está bajo la licencia MIT.
## 🤝 Aportes

¡Contribuciones, ideas y mejoras son bienvenidas! Podés abrir un issue o enviar un pull request.

## 📫 Autor

GitHub: @lexapaga
