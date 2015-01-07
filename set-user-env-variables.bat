@if "%DEBUG%" == "" @echo off
rem @author Kamran Ahmad

rem ######################################################################################################################
rem This script can be used to set system and user level variables to windows registory.
rem Admin permissions are required to set system level variables.
rem ######################################################################################################################

echo these env var are defined.
reg query "HKEY_CURRENT_USER\Environment"

echo removing
reg delete "HKEY_CURRENT_USER\Environment" /v SOFTWARE_HOME /f
reg delete "HKEY_CURRENT_USER\Environment" /v GRADLE_HOME /f
reg delete "HKEY_CURRENT_USER\Environment" /v JAVA_HOME /f

echo adding
reg add HKCU\Environment /v SOFTWARE_HOME /t REG_SZ /d C:\Software  /f 
reg add HKCU\Environment /v GRADLE_HOME /t REG_SZ /d C:\Software\gradle-2.2.1  /f 
reg add HKCU\Environment /v JAVA_HOME /t REG_EXPAND_SZ /d "C:\Program Files\Java\jdk1.7.0_60"  /f 

echo addfter removing. 
reg query "HKEY_CURRENT_USER\Environment"




