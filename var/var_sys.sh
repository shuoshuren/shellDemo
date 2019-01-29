#!/bin/sh
# 系统变量
echo "uid:$UID"
echo "pwd:$PWD"


echo "当前文件名：$0"
echo "第一个参数：$1"

echo "命令执行的结果 \$? is $?"
echo "命令所有参数 \$* is $*"
echo "命令参数个数\$# is $#"
echo "当前的进程号\$\$ is $$"
echo "后台运行的最后一个进程号\$!:$!"

