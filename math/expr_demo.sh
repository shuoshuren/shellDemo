#!/bin/sh
# expr 运算操作的demo

a=20
b=10
c=3

result=`expr $a + $b - $c`
echo "$a+$b-$c=$result"

result=`expr $b / $c`
echo "$b / $c = $result"

result=`expr $a % $c`
echo "$a % $c = $result"
