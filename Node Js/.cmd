@ECHO OFF

REM ENABLE WINDOWS FOR LOOP ADVANCED FLOW CONTROL
SETLOCAL ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION

IF "%npm_use_install%"=="true" (
     npm install 
)
node %node_file_name% 