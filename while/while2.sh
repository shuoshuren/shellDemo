#!/bin/bash
# while 判断数字

i=0

while [ $i -lt 10 ]
do
        echo "This number is $i"
       	let i++;
done
