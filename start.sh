#!/bin/bash

# Navigate to the directory where the Eclipse launcher JAR is located
cd /Users/likhithkanigolla/IIITH/Research_Paper/Code_Files/OM2M/in-cse/

# Run the Java program
"/Users/likhithkanigolla/IIITH/Program-Files/java_1.8/Contents/Home/jre/bin/java" -jar -ea -Declipse.ignoreApp=true -Dosgi.clean=true -Ddebug=true plugins/org.eclipse.equinox.launcher_1.3.0.v20140415-2008.jar -console -noExit

