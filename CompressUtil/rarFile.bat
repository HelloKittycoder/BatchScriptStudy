@echo off
echo %~x1
if "%~x1"==".rar" echo "是rar文件"
::如果是rar，则调用rar命令进行解压
rem mkdir "%~n1"
rem call rar x "%~f1" "%~dp1%~n1"
pause