@if "%DEBUG%" == "" @echo off
rem @author Kamran Ahmad
rem ###########################################################
rem ### Main script to start XD and other components
rem ###########################################################

call xd-env-setup.bat

rem setting up title for command window
title SingleNode XD Server at %XD_HOME%\bin

start xd-start-shell.bat
start xd-open-pages.bat

echo ************************************************
echo **** Single Node xd server startup
echo ************************************************
cd %XD_HOME%\bin
xd-singlenode.bat
