@if "%DEBUG%" == "" @echo off
rem @author Kamran Ahmad
rem ###########################################################################
rem ###  Script to open XD Admin GUI and Refference Doc after XD Server startup
rem ###########################################################################

echo ***************************************
echo ** Waiting for XD server to start
echo ***************************************
timeout /T %CMD_TIMEOUT% /nobreak

cd C:\Program Files (x86)\Google\Chrome\Application
start /min %XD_INSTALL_DIR%/docs/index.html
start /min %XD_ADMIN_GUI%
start /min %RABBITMQ_ADMIN_GUI%

exit

