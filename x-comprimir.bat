@echo off
:: Comprimir archivos PDF
:: V1.0

set pathFile="%~1"

if "%~1"=="" (
    echo [ERROR] No se especifico ningun archivo.
    echo Uso: x-comprimir.bat "ruta\archivo.pdf"
    pause
    exit /b
)

echo ---- File local Comp ----
echo path: %pathFile%

echo ---------------------
call "C:\Program Files\gs\gs10.06.0\bin\gswin64c.exe" -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 ^
  -dPDFSETTINGS=/ebook -dNOPAUSE -dBATCH ^
  -sOutputFile=%pathFile%-outTemp %pathFile%
echo ---------------------
