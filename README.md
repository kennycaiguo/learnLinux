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
# rmdir 删除空目录，如果非空，则报错
# rm 删除文件和目录如 rm -r test （注意只有添加了-r参数才能删除文件夹），还可以加-i（交互式） 和-f（强制删除）
# rm * -rf 表示删除当前目录下面的所有内容，包括文件夹和文件
# rm *.png -rf 表示删除当前目录下面所有png文件
# ln创建快捷方式
如：ln -s my/all/dirs/dir1/dir2/hello.txt hello.txt 为当前目录下面的my/all/dirs/dir1/dir2下面的hello.txt文件创建一个hello.txt的快捷方式

