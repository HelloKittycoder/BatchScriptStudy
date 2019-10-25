@echo off
rem 打印指定的一些名称
echo "=========打印test1.txt text2.txt========="
for %%i in (test1.txt test2.txt) do echo %%i
rem 如果只是简单的在cmd窗口测试这条for循环代码，需要写成
rem for %i in (test1.txt test2.txt) do @echo %i

rem 打印C盘根目录下的所有目录名称
rem /d 参数只能显示当前目录下的目录名字，不会搜索再下一级的目录
echo "=========显示C盘根目录下的所有目录========="
for /d %%i in (c:\*) do echo %%i
C:
echo "=========显示当前目录下名字只有1-4个字母的目录========="
for /d %%i in (????) do echo %%i
pause