@echo off
:: Eliminar todos los metadatos de un tipo de archivo indicado
:: V1.1

set "PregoExtFile=pdf"



echo Procesando archivos .%PregoExtFile% ...

for /R %%f IN (*.%PregoExtFile%) DO call x-clean-metadata.bat "%%f"

pause

:: Eliminar los archivos de respaldo generados por ExifTool
for /R %%f IN (*.%PregoExtFile%*_original) DO del "%%f"