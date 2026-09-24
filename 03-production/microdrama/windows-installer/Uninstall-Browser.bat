@echo off
title MicroDrama Lab - Uninstall
color 0C
echo.
echo  Removing browser install...
set "DEST=%LOCALAPPDATA%\MicroDramaLab"
if exist "%DEST%" (
  rmdir /S /Q "%DEST%"
  echo  Removed %DEST%
) else (
  echo  No install folder found.
)
if exist "%USERPROFILE%\Desktop\MicroDrama Lab.url" (
  del "%USERPROFILE%\Desktop\MicroDrama Lab.url"
  echo  Removed desktop shortcut.
)
echo.
echo  Done.
pause
