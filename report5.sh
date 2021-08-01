#!/bin/bash

if [ $# -ne 2 ]; then
    echo "引数の数が一致しません"
    exit 1
fi

CHAR=`expr "$1" : '\([0-9][0-9]*\)'`
if [ "$1" != "$CHAR" ]; then
    echo "数字ではない文字が含まれています"
    exit 1
fi

CHAR=`expr "$2" : '\([0-9][0-9]*\)'`
if [ "$2" != "$CHAR" ]; then
    echo "数字ではない文字が含まれています"
    exit 1
fi

a=$1
b=$2
if [ $b -le $a ] ; then
    a=$2
    b=$1
fi

r=`expr $a % $b`
while [ $r -ne 0 ]
do
    a=$b
    b=$r
    r=`expr $a % $b`
done

echo $b
exit 0
