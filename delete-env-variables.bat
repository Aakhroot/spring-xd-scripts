@if "%DEBUG%" == "" @echo off
rem @author Kamran Ahmad

rem ######################################################################################################################
rem This script can be used to system and user level variables fron windows registory.
rem Admin permissions are required to remove system level variables.
rem Deleteing env variables under HKEY_CURRENT_USER\Environment will also delete variables under HKEY_USERS\Environment.
rem 
rem Example
rem reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v FOOBAR /f
rem 
rem Add /f switch at to ignore confirms.
rem ######################################################################################################################
echo These env var are defined.
reg query "HKEY_CURRENT_USER\Environment"

echo Removing env var.

rem XD related
reg delete "HKEY_CURRENT_USER\Environment" /v SPRING_XD_VERSION /f
reg delete "HKEY_CURRENT_USER\Environment" /v XD_INSTALL_DIR /f
reg delete "HKEY_CURRENT_USER\Environment" /v XD_HOME /f
reg delete "HKEY_CURRENT_USER\Environment" /v XD_ADMIN_GUI /f
reg delete "HKEY_CURRENT_USER\Environment" /v CMD_TIMEOUT /f
reg delete "HKEY_CURRENT_USER\Environment" /v XD_MODULE_CONFIG_LOCATION /f
reg delete "HKEY_CURRENT_USER\Environment" /v XD_CONFIG_LOCATION /f

rem Common
reg delete "HKEY_CURRENT_USER\Environment" /v SOFTWARE_HOME /f
reg delete "HKEY_CURRENT_USER\Environment" /v GRADLE_HOME /f
reg delete "HKEY_CURRENT_USER\Environment" /v JAVA_HOME /f


echo After removing. 
reg query "HKEY_CURRENT_USER\Environment"



