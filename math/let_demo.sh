#!/bin/sh
# let 运算操作的demo

a=20
b=10
c=3

let result=$a+$b-$c
echo "$a+$b-$c=$result"

let result=$a*$b/$c
echo "$a * $b / $c = $result"

let result=$a*$b%$c
echo "$a * $b % $c = $result"
