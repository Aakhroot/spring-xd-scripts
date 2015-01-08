@if "%DEBUG%" == "" @echo off
rem @author Kamran Ahmad
rem ###########################################################
rem ### Main script to start XD and other components
rem ###########################################################

call xd-env-setup.bat

rem setting up title for command window
title SingleNode XD Server at %XD_HOME%\bin

rem starting shell
start xd-start-shell.bat

rem opening admin and reff pages
start xd-open-pages.bat

rem script for RabbitMQ 
start rabbitMQ-start.bat

echo ************************************************
echo **** Single Node xd server startup
echo ************************************************
cd %XD_HOME%\bin
xd-singlenode.bat