@echo off
rem ��www.baidu.com����ping1000�Σ�ÿ3����������Ļ
rem for /l %%i in (1,1,1000) do @echo %%i
rem https://www.jb51.net/article/151923.htm
rem �����forѭ���ж�ѭ���������в���
rem https://stackoverflow.com/questions/41107608/perform-arithmetic-in-loop-with-variables-in-batch/41110206#41110206

setlocal enabledelayedexpansion
for /l %%i in (1,1,1000) do (
@echo ��%%i��
ping www.baidu.com
set /a "p=%%i%%3"
rem @echo ֵΪ!p!
if "!p!"=="0" cls)
pause