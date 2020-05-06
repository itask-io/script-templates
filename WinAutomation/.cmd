@echo off
SETLOCAL enableextensions enabledelayedexpansion


for /r "%CD%" %%a in (*.waj) do set win_procectfile=%%~dpnxa

if not defined win_controller (
    set win_controller="C:\Program Files\WinAutomation\WinAutomationController.exe"
)

start /b /wait "" %win_controller%  /getprocess %win_processpath% console>null
IF %ERRORLEVEL% NEQ 0 (
    start /b /wait "" %win_controller% /import "%win_procectfile%" %win_processpath%   
)
start /b /wait "" %win_controller% /start %win_processpath%
exit /b %ERRORLEVEL%