# /bin/bash

result=$(bash report5.sh 4 2)

if [ $result -ne 2 ];
then
    echo "NG"
    exit 1
fi

ans="数字ではない文字が含まれています"

result=$(bash report5.sh a 3)

if [ $result != $ans ]; then
    echo "NG"
    exit 1
fi

result=$(bash report5.sh 5 g)

if [ $result != $ans ]; then
    echo "NG"
    exit 1
fi

