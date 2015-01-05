@if "%DEBUG%" == "" @echo off
rem @author Kamran Ahmad

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

rem 
echo SOFTWARE_HOME= %SOFTWARE_HOME%
echo JAVA_HOME=%JAVA_HOME%
echo HOME=%HOME%
echo GRADLE_HOME=%GRADLE_HOME%
