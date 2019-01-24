#!/bin/bash
# 判断目录是否存在
# by author xuechao 2019

DIR=/tmp/20190123

if [ ! -d $DIR ];then
        mkdir -p  $DIR
        echo "this $DIR create success"
else
        echo "This $DIR is exist,please exit"
fi
