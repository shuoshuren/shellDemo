#!/bin/bash

# 逐行读取文件

while read line
do
        echo $line
done </etc/hosts
