@echo off
rem 7zѹ�����ѹ��
@"%~dp07-Zip\7za.exe" %*

rem ʹ��˵����
rem ������zip�ļ�
rem 7z a -r test.zip test\ #�ѵ�ǰĿ¼�µ�test�ļ���ѹ����test.zip�ļ���
rem 7z x -y test.zip #��test.zip�ļ��н�ѹ����ǰĿ¼��-y���Զ��ش�yes����ʾ����ļ��Ѿ����ڣ��Զ����ǵ�
rem ������7z�ļ�
rem 7z a -r test.7z test\
rem 7z x -y test.7z
rem ������Ҫ���ܻ���ܣ�������123456
rem 7z a -p123456 -r Diary.7z Diary\ ��Diary��ͬ�ļ����µ���������ѹ����Diary.7z�У�����Ϊ123456
rem 7z x -p123456 Diary.7z -otest\ ��Diary.7z�ļ���ѹ����ǰĿ¼��test�ļ��У���������ڣ����ȴ���test�ļ��У��£�����Ϊ123456