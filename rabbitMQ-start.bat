@if "%DEBUG%" == "" @echo off
rem @author Kamran Ahmad

echo ************************************************
echo ***************** Rabbit MQ 
echo ************************************************

call xd-env-setup.bat

rem setting up title for command window
rem title RabbitMQ Server at %SOFTWARE_HOME%\RabbitMQ Server

rem starting Rabbit MQ Server & Rabbit MQ control shell
cd %SOFTWARE_HOME%\RabbitMQ Server\rabbitmq_server-3.4.2\sbin
start rabbitmqctl.bat
rabbitmq-server.bat"
