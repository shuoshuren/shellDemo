#!/bin/sh
# 演示数组定义及其常用操作
myarray=(0 1 2 3 4 5 6 7 8 9 10)

echo "数组元素：${myarray[*]}"
echo "数组第一个元素：${myarray[0]}"
echo "数组长度：${#myarray[@]}"
echo "数组长度：${#myarray[*]}"

# 修改第一个元素值
myarray[0]=999
echo "修改后：${myarray[*]}"

# 删除myarray[0]

unset myarray[0]
echo "删除后：${myarray[*]}"

