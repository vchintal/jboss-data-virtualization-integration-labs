JAVA=`which java`
if [ "$?" -ne "0" ]
then
	echo "Java was not found on the PATH! Checking for JAVA_HOME ..."
	if [ -z "$JAVA_HOME+x" ]
	then 
		echo "JAVA_HOME is not set. Aborting ..."
		exit
	else
		if [ -e "$JAVA_HOME/bin/java" ]
		then 
			export JAVA=$JAVA_HOME/bin/java
		fi
	fi
fi
echo "Starting JBoss Developer Studio Installation"
$JAVA -jar binaries/jboss-devstudio-8.1.0.GA-installer-standalone.jar install-configs/jbds-autoinstall-script.xml
echo "Starting JBoss Data Virtualization Installation"
$JAVA -jar binaries/jboss-dv-installer-6.1.0.redhat-3.jar install-configs/dv-autoinstall-script.xml

