@echo off
rem �������
set procName=%1
if "%procName%"=="" (
    echo ��
) else (
    echo %procName%
)
taskkill /f /im %procName% /t