# learnLinux
# cat /etc/group :查看本机所有用户组信息，可以看到用户组名（一般和用户名相同），用户组号id
# cat /etc/passwd：查看本机所有用户信息，内容格式：用户名 用户id 所属组id 所属组名 ，，， 用户家目录，bash。。。
# 可以利用ls命令查看一个目录下面右哪些文件以及大小，使用-lh组合参数
## 也可以利用ls来查看文件夹的大小 如： ls -lh cProjects :查看当前目录下面cProjects文件夹的大小
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

# file命令，获取文件类型 如：file hello 显示hello文件的类型
# gzip命令，压缩文件和解压缩文件 如：gzip xx.tar :压缩当前目录下面的xx.tar文件生成xx.tar.gz 文件
# gzip命令解压缩如：gzip -d jp.tar.gz 
# tar命令：打包和解包 ，该命令没有压缩功能
## 打包 tar -cvf aaa.tar * :将当前目录下面的所有文件和文件夹打包成为一个aaa.tar的文件，如果需要压缩需要添加-z参数
## 也可以用tar创建gzip压缩文件如：tar -cvzf java.tar.gz javaprojects ：把当前目录下面的javaprojects目录打包压缩为javaproj.tar.gz文件
##  解压 tar -zxvf aaa.tar :将aaa.tar 文件解包到当前目录下面，也可以指定解压目录如：tar -zxvf jp.tar.gz -C ../ ：把当前目录的jp.tar.gz 解压缩到上一级目录
## 用tar命令创建bzip2压缩文件：tar -cjvf javap.tar.bz2 javaprojects ：把当前目录下面的javaprojects目录打包压缩为javaproj.tar.bz2文件
##  解压tar.bz2文件 tar -jxvf ×××.tar.bz2 如果需要指定解压目录，需要-C参数

# 查看目录大小 du 目录名称 -h

# zip ，unzip
## zip创建压缩文件：zip -r 目标文件名 源文件（目录）名：如：zip -r cproj cProjects 将当前目录下面的cProjects压缩为cproj.zip文件，注意必须添加-r参数否则不会添加文件到压缩包
## 解压：unzip -d 目标文件夹 压缩文件名称：如：unzip -d cprojects cproj.zip 将当前目录下面的cproj.zip解压缩到cprojects 目录中，没有该目录会自动创建
 
# which命令，查看指定的命令在哪里： 如：which ls ：查看ls命令在哪个目录，结果 /bin/ls
# 用户权限管理命令：
## w/who/whoami：查看当前登录的用户，w命令最详细，who次之，whoami最简洁

# groupadd ，添加用户组，groupadd admin 创建用户组admin
# groupdel ， 删除用户组如：groupdel admin 删除用户组admin，注意只有当一个用户名里面没有用户的时候才可以删除这个组，否则报错
# useradd 用户名。添加新用户： 格式 useradd -d /home/abc abc -m，一定要添加-m参数，否则不会创建该用户的家目录，默认创建同名组
# 也可以在创建用户的同时为该用户指定所属的组 ：useradd -d /home/abc abc -g kenny -m，创建用户abc将其加入kenny用户组
# userdel 用户名，删除用户，注意，有时候删除用户并不会删除用户主目录，如果要删除用户同时删除用户主目录，最好添加-r参数，如：userdel -r abc
# usermod 将用户添加到指定是组，格式：usermod -g 组名 用户名 如：usermod -g kenny abc，表示将用户abc添加到kenny组


