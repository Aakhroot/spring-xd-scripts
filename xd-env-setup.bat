@if "%DEBUG%" == "" @echo off
rem @author Kamran Ahmad

rem setting common env
call dev-env-setup.bat

rem #######################################################################
rem All environment variable used in XD installation. Can be set explicitly
rem #######################################################################

if not defined SPRING_XD_VERSION (
	set SPRING_XD_VERSION=spring-xd-1.0.0.RELEASE
)

if not defined XD_INSTALL_DIR (
	set XD_INSTALL_DIR=%SOFTWARE_HOME%\%SPRING_XD_VERSION%
)

if not defined XD_HOME (
	set XD_HOME=%XD_INSTALL_DIR%\xd
)	

rem update port and ip if required, not needed for single node setup
if not defined XD_ADMIN_GUI (
	set XD_ADMIN_GUI=http://localhost:9393/admin-ui/ 
)

if not defined RABBITMQ_ADMIN_GUI (
	set RABBITMQ_ADMIN_GUI=http://localhost:15672/ 
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

rem #######################################################################
rem Optional: Path setup for other tools
rem #######################################################################

rem set ZOOKEEPER_HOME=
