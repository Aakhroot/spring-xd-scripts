@if "%DEBUG%" == "" @echo off

rem @author Kamran Ahmad
rem ###########################
rem ###  XD Shell startup
rem ###########################

title XD Shell at %XD_INSTALL_DIR%\shell\bin

echo *******************************************
echo ***Delaying start due to xd server startup
echo *******************************************

timeout /T %CMD_TIMEOUT% /nobreak
cd %XD_INSTALL_DIR%\shell\bin
xd-shell.bat
