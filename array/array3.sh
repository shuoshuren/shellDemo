#!/bin/sh
# 数组动态扩容
# 功能：在授权有效期类形成机器可信任列表
# 使用方法：脚本名 有效日期 server1 server2

# 获取所有参数存入数组
list=($*)
len=${#list[@]}

# 第一个元素为有效期
echo ${list[0]} >./trustip.txt
for (( i=1;$i<$len;i++ ))
do
        echo "${list[$i]}" >>./trustip.txt
done

# 显示这个时间可信任的IP列表
cat ./trustip.txt
