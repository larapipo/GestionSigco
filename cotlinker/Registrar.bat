@echo off
regsvr32 "%~dp0cotlinker64.dll" /i /n /s 
regsvr32 "%~dp0cotlinker.dll"
if %ERRORLEVEL%==0 goto b
start %comspec% /c "mode 80,10&title Error al registrar&color 1e&echo.&echo. No se pudo registrar Cotlinker&echo. Si esta en Windows Vista o superior debe ejecutar en modo administrador&echo. (Click derecho - Ejecutar como Administrador)&echo.&echo. Presione una tecla!&pause>NUL"
b: