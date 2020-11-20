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
# cat命令的妙用：
## 1.同时显示两个以上的文件cat epel.txt files.txt
## 2.将两个以上的文件的内容合并到一个文件 cat file1.txt files.txt > file.txt

# grep 的用法：查找
## 如：grep w file.txt :在file.txt中查含有w的单词，不论w在单词的什么位置
# find在指定目录在查找文件如：find ./ -name "*.c" 在当前目录中查找以“.c”结束的文件，用了-name参数的话，后面需要加“”，否则找不到
# cp 文件拷贝 ：cp 源文件名 目标文件名
## 如：cp file1.txt file2.txt
## 拷贝目录需要添加参数-r 如 cp abc/ abc1 -r 如：cp my/ my1/ -r ：将当前文件夹下面的my文件夹复制一个my1的副本
# mv 文件移动： mv 源文件名 目标文件名，可以移动文件和目录  mv all/ ~/my/ 将当前目录下的allml移动到用户的家目录下面的my目录下面
## mv还可以用来给文件改名，如 mv file.txt girls.txt ：将当前目录下面的file.txt 修改为girls.txt


