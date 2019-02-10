#!/bin/bash
# auto if test
# by author xuechao 2019

NUM=100

NUM2=10

if (($NUM > $NUM2))
then
        echo "this $NUM greate $NUM2"
elif (($NUM == $NUM2))
then
	echo "this $NUM equal to $NUM2"
else
        echo "this $NUM less $NUM2"


fi
