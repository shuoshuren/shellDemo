#!/bin/sh
# 向函数传递参数
# func2.sh

function sum(){

        echo "向函数中传递参数"
        if [ $# -eq 2 ];then
                echo "符合函数要求的参数个数"
                a1=$1
                a2=$2
                let sum=a1+a2
        else
                echo "函数要求参数不符合"
        fi
        echo "$a1 + $a2 = $sum"
}

sum 10 90
