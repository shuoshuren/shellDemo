#!/bin/sh
# 定义变量并引用

name='xuechao\r\n\t' # 字符串类型，不解析任何字符
address="成都\" $name " # 双引号内部会解析$和反斜杠特殊字符
date_cmd=`date` # 反引号执行系统命令

echo "name:$name"
echo "address:${address}"
echo "date:$date_cmd"
