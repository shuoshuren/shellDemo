#!/bin/bash
# 字符串操作
str="helloWorld,好好学习"
length=`expr length $str`
echo "字符串长度：$length"
echo "取子串：`expr substr $str 1 5`"
echo "取子串：`echo ${str:0:5}`"
echo "连接：${str},天天向上"
echo "替换一次：`echo ${str/好/good }`"
echo "替换全部：`echo ${str//好/good }`"
