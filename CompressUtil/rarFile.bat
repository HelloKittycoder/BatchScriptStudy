@echo off
echo %~x1
if "%~x1"==".rar" echo "��rar�ļ�"
::�����rar�������rar������н�ѹ
rem mkdir "%~n1"
rem call rar x "%~f1" "%~dp1%~n1"
pause