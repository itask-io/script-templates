@ECHO OFF

SETLOCAL ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION

IF "%python_use_pipinstall%"=="true" (
 pip install -r requirements.txt
)
%python_alias% %python_file_name%  