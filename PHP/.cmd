@ECHO OFF

REM ENABLE WINDOWS FOR LOOP ADVANCED FLOW CONTROL
SETLOCAL ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION

IF "%composer_use_install%"=="true" (
  composer install
)
php %php_file_name% 