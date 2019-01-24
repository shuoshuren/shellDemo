#!/bin/bash
# auto backup mysql db
# by author xuechao 2019
# define backup path

BACK_DIR=/data/backup/`date +%Y%m%d`
MYSQLDB=python3
MYSQLUSR=root
MYSQLPW=mysql
MYSQLCMD=/usr/bin/mysqldump

# 判断是否是root用户
if [ $UID -ne 0 ];then
        echo "Must to be use root for exec shell"
        exit
fi

# 备份文件目录是否存在
if [ ! -d $BACK_DIR ];then
        mkdir -p $BACK_DIR
        echo -e "\033[32mThe $BACK_DIR crate successfull\033[0m"
else
        echo "This $BACK_DIR is exists..."
fi

# 开始备份
$MYSQLCMD -u$MYSQLUSR -p$MYSQLPW -d $MYSQLDB > $BACK_DIR/$MYSQLDB.sql

# 判断命令是否执行成功
if [ $? -eq 0 ];then
        echo -e "\033[32mThe mysql backup success\033[0m"
else
        echo "the mysql backup failed"
fi
