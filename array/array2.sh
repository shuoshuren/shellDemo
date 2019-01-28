#!/bin/sh
# 循环读取数组列表演示
myarray=(0 1 2 3 4 5 6 7 8 9 10)
len=${#myarray[*]}
echo "数组长度：$len"
echo "数组元素依次是："
for (( i=0; $i<$len;i++ ))
do
        echo ${myarray[$i]}
        sleep 1
done
