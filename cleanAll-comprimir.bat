@echo off
:: Eliminar todos los metadatos de un tipo de archivo indicado
:: V1.1
setlocal enabledelayedexpansion

set "PregoExtFile=pdf"



echo Procesando archivos .%PregoExtFile% ...

for /R %%f IN (*.%PregoExtFile%) DO call x-comprimir.bat "%%f"

pause


for /r %%F in (*-outTemp) do (
    set "original=%%~dpnF.pdf"
    if exist "!original!" del "!original!"
    ren "%%F" "%%~nF.pdf"
)

endlocal
