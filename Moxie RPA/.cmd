@ECHO OFF

REM ENABLE WINDOWS FOR LOOP ADVANCED FLOW CONTROL
SETLOCAL ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION

set moxie_rpa_path=%APPDATA%\moxie-tagui
for /f "tokens=* delims=" %%a in ('jsonextractor.bat package.json "main"') do (
 set "main=%%~a"
)
for /f "tokens=* delims=" %%b in ('jsonextractor.bat package.json "arguments"') do (
 set "arguments=%%~b"
)
%moxie_rpa_path%\tagui.cmd %main% %arguments%
