#!/bin/bash
SCRIPT_DIR=$(dirname "$0")
# Navigate to the directory where the Eclipse launcher JAR is located
cd $SCRIPT_DIR	
export JAVAPATH=$(which java) 
echo "Java path found: $JAVAPATH"

if [[ -z $JAVAPATH ]] ; then
	echo "No java found, Exiting"
	exit 1
fi

# Run the Java program
"$JAVAPATH" -jar -ea -Declipse.ignoreApp=true -Dosgi.clean=true -Ddebug=true plugins/org.eclipse.equinox.launcher_1.3.0.v20140415-2008.jar -console -noExit

