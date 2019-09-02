@echo off
rem 工具包所在目录
set PKG_PATH=%~dp0
rem batool目录
set BATOOL_PATH=%PKG_PATH%batool
rem link目录
set LINK_PATH=%PKG_PATH%link
rem 设置临时PATH，该设置只在本次cmd窗口以及子窗口中有效，脚本结束或窗口关闭后失效
set PATH=%BATOOL_PATH%;%LINK_PATH%;%PATH%
start "windows操作工具" cmd