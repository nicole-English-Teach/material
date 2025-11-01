@echo off
setlocal enabledelayedexpansion

setlocal enabledelayedexpansion

rem Ruta base = carpeta del bat + \docs\
set "base=%~dp0docs\"
set urlPrego=https://nicole-english-teach.github.io/material-public/

echo --- Pages
echo -----
for /R "%base%" %%F in (*.pdf) do (
    set "rel=%%F"
    set "rel=!rel:%base%=!"
    rem reemplazar \ por /
    set "rel=!rel:\=/!"
    echo %urlPrego%!rel!
)
echo -----

endlocal
pause