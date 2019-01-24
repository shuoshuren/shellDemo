#!/bin/bash
# 累加求和

j=0

for ((i =1;i<=100;i++))
do
        j=`expr $i + $j`

done

echo $j

