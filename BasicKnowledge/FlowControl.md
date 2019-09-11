### 流程控制
一、 条件判断if  
1.判断字符串是否为空
```batch
@echo off
rem 清理进程
set procName=%1
if "%procName%"=="" (
    echo 空
) else (
    echo %procName%
)
```