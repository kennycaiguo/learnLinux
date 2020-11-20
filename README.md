# learnLinux
# linux 重定向符号“>”
如：ls > files.txt :将ls命令的结果重定向到一个叫做files.txt的文件中，如果文件不存在，则创建，如果存在则覆盖原来的内容
# linux 重定向符号“>>”
如：ls > files.txt :将ls命令的结果重定向到一个叫做files.txt的文件中，如果文件不存在，则创建，如果存在不会覆盖原来的内容，只会在后面追加
# 分页查看文件命令more ：语法举例：more /usr/include/pcre.h
# 管道命令|，一个命令的输出可以转为另外一个命令的输入
如 cat /usr/include/stdio.h|more
又如：ls /usr/include |grep std //查看/usr/include文件夹中所有文件名包含std的文件
# clear 清屏
# pwd 查看当前目录
# cd 切换目录 注意：cd 切换到用户的家目录 cd ~ 切换到用户的家目录 cd .. 切换到上一级目录 cd -可以回到上一次进入的目录
# mkdir 创建目录如 mkdir abc 在当前目录下面创建abc目录，注意： mkdir test/dir/dir1 -p 级联创建目录（需要-p参数）
