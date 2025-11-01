@echo off
:: Eliminar todos los metadatos
:: V1.2

set pathFile="%~1"

if "%~1"=="" (
    echo [ERROR] No se especifico ningun archivo.
    echo Uso: x-clean-metadata.bat "ruta\archivo.pdf"
    pause
    exit /b
)

echo ---- File local ----
echo path: %pathFile%

echo ---------------------
call C:\SW\APP\img\exiftool\exiftool-12.80\exiftool.exe -all= -XMP:All= -overwrite_original ^
  -Producer= -Creator= -Title= -Author= -Subject= ^
  -Keywords= -CreateDate= -ModifyDate= -MetadataDate= %pathFile%
echo ---------------------

