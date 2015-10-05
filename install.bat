@echo off

for /F "tokens=*" %%i in ('where java') do set JAVA=%%i

if defined %JAVA_HOME%
if "%JAVA%" == "" (
	echo Setting JAVA variable
	set JAVA=%JAVA_HOME%\bin\java.exe
)

if "%JAVA%" == "" (
	echo Cannot find java on the system. Aborting ...
	exit 1
)

echo Starting JBoss Developer Studio Installation
"%JAVA%" -jar binaries/jboss-devstudio-8.1.0.GA-installer-standalone.jar install-configs/jbds-autoinstall-script.xml

echo Starting JBoss Data Virtualization Installation
"%JAVA%" -jar binaries/jboss-dv-installer-6.1.0.redhat-3.jar install-configs/dv-autoinstall-script.xml

