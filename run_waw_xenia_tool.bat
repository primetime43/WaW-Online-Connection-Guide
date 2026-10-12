@echo off
setlocal
powershell.exe -NoLogo -NoProfile -ExecutionPolicy Bypass -File "%~dp0waw_xenia_launcher.ps1" %*
exit /b %ERRORLEVEL%
