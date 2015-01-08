@if "%DEBUG%" == "" @echo off
rem @author Kamran Ahmad

rem ##############################################################
rem ###### All dev env related path settings can be done here
rem ##############################################################

rem Provide where all your softwares are located e.g C:\Softwares
if not defined SOFTWARE_HOME (
	set SOFTWARE_HOME=C:\Software
)

if not defined JAVA_HOME (
	set JAVA_HOME = C:\Program Files\Java\jdk1.7.0_60
)

if not defined HOME (
	set HOME=%USERPROFILE% 
)

if not defined GRADLE_HOME (
	set GRADLE_HOME=%SOFTWARE_HOME%\gradle-2.2.1
)

rem set PATH
set PATH=%PATH%;%SOFTWARE_HOME%\apache-maven-3.2.5\bin
set PATH=%PATH%;%SOFTWARE_HOME%\Python27

rem 
echo SOFTWARE_HOME= %SOFTWARE_HOME%
echo JAVA_HOME=%JAVA_HOME%
echo HOME=%HOME%
echo GRADLE_HOME=%GRADLE_HOME%
