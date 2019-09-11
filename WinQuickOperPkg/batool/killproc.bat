@echo off
rem 清理进程
set procName=%1
if "%procName%"=="" (
    echo 空
) else (
    echo %procName%
)
taskkill /f /im %procName% /t