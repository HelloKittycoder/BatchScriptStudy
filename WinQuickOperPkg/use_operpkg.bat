@echo off
rem ���߰�����Ŀ¼
set PKG_PATH=%~dp0
rem batoolĿ¼
set BATOOL_PATH=%PKG_PATH%batool
rem linkĿ¼
set LINK_PATH=%PKG_PATH%link
rem ������ʱPATH��������ֻ�ڱ���cmd�����Լ��Ӵ�������Ч���ű������򴰿ڹرպ�ʧЧ
set PATH=%BATOOL_PATH%;%LINK_PATH%;%PATH%
start "windows��������" cmd