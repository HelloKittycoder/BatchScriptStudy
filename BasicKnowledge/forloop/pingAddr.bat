@echo off
rem 对www.baidu.com连续ping1000次，每3次清理下屏幕
rem for /l %%i in (1,1,1000) do @echo %%i
rem https://www.jb51.net/article/151923.htm
rem 如何在for循环中对循环变量进行操作
rem https://stackoverflow.com/questions/41107608/perform-arithmetic-in-loop-with-variables-in-batch/41110206#41110206

setlocal enabledelayedexpansion
for /l %%i in (1,1,1000) do (
@echo 第%%i次
ping www.baidu.com
set /a "p=%%i%%3"
rem @echo 值为!p!
if "!p!"=="0" cls)
pause