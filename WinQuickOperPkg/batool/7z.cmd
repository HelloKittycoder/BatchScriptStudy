@echo off
rem 7z压缩与解压缩
@"%~dp07-Zip\7za.exe" %*

rem 使用说明：
rem 比如是zip文件
rem 7z a -r test.zip test\ #把当前目录下的test文件夹压缩到test.zip文件中
rem 7z x -y test.zip #把test.zip文件夹解压到当前目录，-y（自动回答yes）表示如果文件已经存在，自动覆盖掉
rem 比如是7z文件
rem 7z a -r test.7z test\
rem 7z x -y test.7z
rem 比如需要加密或解密，密码是123456
rem 7z a -p123456 -r Diary.7z Diary\ 将Diary连同文件夹下的所有内容压缩到Diary.7z中，密码为123456
rem 7z x -p123456 Diary.7z -otest\ 将Diary.7z文件解压至当前目录的test文件夹（如果不存在，则先创建test文件夹）下，密码为123456