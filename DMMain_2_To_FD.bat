@echo off
cd C:\Proyectos Delphi\GestionComercial
set /p A="Archivo(s):"
echo %A%
echo /p "Iniciando reemplazo en %A%..."
@echo on
reFind %A%.dfm /i /w /p:"DMMain_2" /r:"DMMain_FD" 

@echo off
echo /p "Reemplazo finalizado..."
pause