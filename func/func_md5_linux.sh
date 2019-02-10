#!/bin/sh
# 独立函数文件演练
# mac下面的md5sum命令找不到: brew install md5sha1sum 
function file_md5(){
    if [ $# -ne 1 ]
    then
            echo "函数参数个数有误，请输入一个参数"
    else
            filename=$1
            md5=$(md5sum $filename)
            echo "$filename 的md5为：$md5"
    fi
}
