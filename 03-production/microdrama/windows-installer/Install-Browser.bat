@echo off
title MicroDrama Lab - Browser Install
color 0D
echo.
echo  ========================================
echo   MicroDrama Lab - Quick Browser Setup
echo  ========================================
echo.
echo  This copies the app and opens it in your
echo  default browser. No admin needed.
echo.

set "DEST=%LOCALAPPDATA%\MicroDramaLab"
if not exist "%DEST%" mkdir "%DEST%"

set "SRC=%~dp0app\index.html"
if not exist "%SRC%" set "SRC=%~dp0..\microdrama-app.html"
if not exist "%SRC%" (
  echo  ERROR: Could not find microdrama-app.html
  echo  Put index.html in app\ or keep microdrama-app.html in parent folder.
  pause
  exit /b 1
)

copy /Y "%SRC%" "%DEST%\index.html" >nul
if errorlevel 1 (
  echo  ERROR: Could not copy files.
  pause
  exit /b 1
)

echo  Installed to:
echo    %DEST%
echo.

powershell -NoProfile -Command ^
  "$ws = New-Object -ComObject WScript.Shell; $s = $ws.CreateShortcut('%USERPROFILE%\Desktop\MicroDrama Lab.url'); $s.TargetPath = '%DEST%\index.html'; $s.Save()" 2>nul

echo  Desktop shortcut created (if allowed).
echo  Opening MicroDrama Lab...
echo.
start "" "%DEST%\index.html"
timeout /t 3 >nul
exit /b 0
