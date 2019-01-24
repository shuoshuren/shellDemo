#!/bin/bash
#auto make install lamp
#by author xuechao 2019

#httpd define path variable
H_FILES=httpd-2.2.27.tar.bz2
H_FILES_DIR=httpd-2.2.27
H_URL=http://mirrors.cnnic.cn/apache/httpd/
H_PREFIX=/usr/local/apache2/

#mysql define path variable
M_FILES=mysql-5.5.20.tar.bz2
M_FILES_DIR=mysql-5.5.20
M_URL=http://down1.chinaunix.net/distfiles/
M_PREFIX=/usr/local/mysql/

if [ -z "$1" ];then
	echo "please select install menu"
	echo "1) 编译安装Apache服务器"
	echo "2) 编译安装mysql服务器"
	echo "3) 编译安装PHP服务器"
	echo "4) 配置index.php并启动lamp服务器"
	echo "1) usage:{ /bin/bash $0 1|2|3|4|help }"
fi

if [[ "$1" -eq "help" ]];then
	echo "please select install menu"
	echo "1) 编译安装Apache服务器"
	echo "2) 编译安装mysql服务器"
	echo "3) 编译安装PHP服务器"
	echo "4) 配置index.php并启动lamp服务器"
	echo "1) usage:{ /bin/bash $0 1|2|3|4|help }"
fi


# 安装Apache服务器
if [[ "$1" -eq "1" ]];then
	wget -c $H_URL/$H_FILES &&tar -jxvf $H_FILES && cd $H_FILES_DIR ;./configure --prefix=$H_PREFIX

	if [ $? -eq 0];then
		make && make install
		echo -e "\033[32mThe %H_FILES_DIR server install success\033[0m"
	else
		echo -e "\033[32mThe %H_FILES_DIR server install failed\033[0m"
		exit
	fi
fi


# 安装Apache服务器
if [[ "$1" -eq "2" ]];then
	wget -c $M_URL/$M_FILES &&tar -xzvf $M_FILES && cd $M_FILES_DIR

	if [ $? -eq 0];then
		make && make install
		echo -e "\033[32mThe %H_FILES_DIR server install success\033[0m"
	else
		echo -e "\033[32mThe %H_FILES_DIR server install failed\033[0m"
		exit
	fi
fi