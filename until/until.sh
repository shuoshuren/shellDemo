#!/bin/bash
# 条件判断数字
a=10;

until [[ $a -lt 0 ]];do
        echo $a;
        (( a-- ));
done;
