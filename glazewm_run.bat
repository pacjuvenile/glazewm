@echo off
cd /d "%~dp0"

echo Set WshShell = CreateObject("WScript.Shell") > "%temp%\glazewm.vbs"
echo WshShell.Run "glazewm start" -- cfg "config/system.kbd", 0, Flase >> "%temp%\glazewm.vbs"

cscript //nologo "%temp%\glazewm.vbs"
del /f /q "%temp%\glazewm.vbs"
