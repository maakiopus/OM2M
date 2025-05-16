@echo off
set SCRIPT_DIR=%~dp0
cd /d "%SCRIPT_DIR%"

for /f "delims=" %%j in ('where java') do set "JAVAPATH=%%j"

if not defined JAVAPATH (
    echo No Java installation found in PATH. Exiting.
    exit /b 1
)

"%JAVAPATH%" -jar -ea -Declipse.ignoreApp=true -Dosgi.clean=true -Ddebug=true plugins/org.eclipse.equinox.launcher_1.3.0.v20140415-2008.jar -console -noExit
