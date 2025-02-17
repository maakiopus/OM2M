#!/bin/bash

# Navigate to the directory where the Eclipse launcher JAR is located
cd /PATH/TO/THE/FILES/OF/OM2M

# Run the Java program
"/PATH/TO/THE/JAVA/java_1.8/Contents/Home/jre/bin/java" -jar -ea -Declipse.ignoreApp=true -Dosgi.clean=true -Ddebug=true plugins/org.eclipse.equinox.launcher_1.3.0.v20140415-2008.jar -console -noExit

