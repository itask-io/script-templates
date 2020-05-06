@ECHO OFF

REM ENABLE WINDOWS FOR LOOP ADVANCED FLOW CONTROL
SETLOCAL ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION
echo java -jar %sikulix_path% -r %cd%\%sikulix_filename%
java -jar %sikulix_path% -r %cd%\%sikulix_filename%
