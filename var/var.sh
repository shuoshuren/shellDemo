#!/bin/bash
# define path variables
# by author xuechao 2019
A=123

# echo "this is my first shell var :$A"

name=xuechao

echo "My name is $name"
echo "uid:$UID"
echo "pwd:$PWD"

echo "#############"

echo "当前文件名：$0"
echo "第一个参数：$1"

echo "----------------"
echo "命令执行的结果 \$? is $?"
echo "命令所有参数 \$* is $*"
echo "命令参数个数\$# is $#"
