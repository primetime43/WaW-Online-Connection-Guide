@echo off
setlocal
call "%~dp0run_waw_xenia_tool.bat" setup %*
set "WAW_EXIT=%ERRORLEVEL%"
if not defined WAW_XENIA_NO_PAUSE pause
exit /b %WAW_EXIT%
