#!/bin/sh
# 演练函数的定义及其应用方法
# fun1.sh

# print_welcome

function print_welcome(){
    echo "演练函数的定义及其引用方法"
    echo "welcom,now time is `date`"
}

print_welcome

print_welcome(){
    echo "func1"
}

print_welcome


