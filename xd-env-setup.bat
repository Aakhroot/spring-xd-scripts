@if "%DEBUG%" == "" @echo off
rem @author Kamran Ahmad
rem ################################
rem ###  Global Env setup script
rem ################################

rem #######################################################################
rem All environment variable used in XD installation. Can be set explicitly
rem #######################################################################

if not defined SPRING_XD_VERSION (
	set SPRING_XD_VERSION=spring-xd-1.0.2.RELEASE
)

rem Provide you where all your softwares are located e.g C:\Softwares
if not defined SOFTWARE_HOME (
	set SOFTWARE_HOME=C:\Users\kamran\Softwares
)
	
if not defined XD_INSTALL_DIR (
	set XD_INSTALL_DIR=%SOFTWARE_HOME%\spring-xd-1.0.2.RELEASE
)

if not defined XD_HOME (
	set XD_HOME=%XD_INSTALL_DIR%\xd
)	

rem update port and ip if required, not needed for single node setup
if not defined XD_ADMIN_GUI (
	set XD_ADMIN_GUI=http://localhost:9393/admin-ui/ 
)

rem define, how many seconds to wait for XD server startup
if not defined CMD_TIMEOUT (
	set CMD_TIMEOUT=25 
)

if not defined XD_MODULE_CONFIG_LOCATION (
	set XD_MODULE_CONFIG_LOCATION=%XD_HOME%\config\modules
)

if not defined XD_CONFIG_LOCATION (
	set XD_CONFIG_LOCATION=%XD_HOME%\config\
)

rem set ZOOKEEPER_HOME=

rem #######################################################################
rem Optional: Path setup for other tools
rem #######################################################################

if not defined JAVA_HOME (
	set JAVA_HOME = C:\Program Files\Java\jdk1.7.0_60
)
if not defined HOME (
	set HOME=%USERPROFILE% 
)
if not defined GRADLE_HOME (
	set GRADLE_HOME=%SOFTWARE_HOME%\gradle-2.2.1
)

