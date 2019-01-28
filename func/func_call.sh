#!/bin/sh
# 函数的载入与调用
. ./func3.sh

while [ 1 ]
do
        read -p "请输入一个文件名：" file
        file_md5 $file
        
done
