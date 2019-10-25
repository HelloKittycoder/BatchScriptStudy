@echo off
rem copy命令使用demo
rem 常用参数说明：
rem /y 目标文件夹遇到同名文件时直接覆盖，不提示

rem 使用说明：
rem 先保证E盘目录结构如下：
rem |─a
rem |      test1.txt
rem |      test2.txt
rem |
rem |─b

rem 如何将一个目录下的部分文件复制到另一个目录下
rem 原始目录E:\a下面有两个文件test1.txt，test2.txt
rem 现在需要将这两个文件复制到E:\b目录下
for %%i in (test1.txt test2.txt) do copy /y "E:\a\%%i" "E:\b"
rem 如果只是简单的在cmd窗口简单的测试上面这行代码，需要写成
rem for %i in (test1.txt test2.txt) do @copy /y "E:\a\%i" "E:\b"
rem 如果想先看下会执行什么命令，可以写成
rem for %i in (test1.txt test2.txt) do @echo copy /y "E:\a\%i" "E:\b"