@echo OFF

SETLOCAL enableextensions enabledelayedexpansion

if defined uipath_filename  (
    set uipath_filename="%cd%\%uipath_filename%"
)

if not defined uipath_filename (
    for /r "%CD%" %%a in (*.nupkg) do set uipath_filename=%%~dpnxa
)

START /b /wait taskkill /f /im UiPath.Service.UserHost.exe>NUL


if not defined uipath_robotpath (
    for /r %LOCALAPPDATA%\UiPath %%a in (*.exe) do (
        if "%%~nxa"=="UiRobot.exe" (
            set uipath_robotpath=%%~dpnxa
            goto x_foundpath
        )
    )
)

if not defined uipath_robotpath (
    for /r "C:\Program Files (x86)\UiPath\Studio" %%a in (*.exe) do (
        if "%%~nxa"=="UiRobot.exe" (
            set uipath_robotpath=%%~dpnxa
            goto x_foundpath
        )
    )
)

if not defined uipath_robotpath (
    goto :x_notfoundpath
)

:x_foundpath
if %uipath_readlog%==true start /b  ReadUiPathLogs.exe
start /b /wait %uipath_robotpath% execute --file %uipath_filename%
set process_error=%errorlevel%
if %uipath_readlog%==true START /b /wait taskkill /f /im ReadUiPathLogs.exe >NUL
exit /b %process_error%
goto :eof
:x_notfoundpath
echo UiRobot.exe not found.Please enter the full path of UiRobot.exe
exit /b 1