@ECHO OFF

REM ENABLE WINDOWS FOR LOOP ADVANCED FLOW CONTROL
SETLOCAL ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION


if not defined autoit_exe_path (
    set autoit_exe_path="C:\Program Files (x86)\AutoIt3\AutoIt3_x64.exe"
    %autoit_exe_path% "%cd%\%autoit_filename%"
)
else(
  %autoit_exe_path% "%cd%\%autoit_filename%"
)
