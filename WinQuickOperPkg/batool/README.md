### bat工具封装
7z.cmd 7z压缩与解压缩命令行工具  
zip.exe zip压缩  
使用：  
zip -rq test.zip test\* #把当前目录下的test文件夹压缩到test.zip文件中，q表示安静模式（不显示压缩过程）  
unzip.exe zip解压缩  
使用： 
unzip test.zip #把test.zip文件夹解压到当前目录  
unzip -o test.zip -d newDir #在当前目录下创建newDir（-d标记解压目录），然后把test.zip解压至newDir中（-o表示如果文件已存在，则直接覆盖）