#! /bin/bash
function bigger { 
    if [ $1 -gt $2 ]
    then
        echo $1
    else
        echo $2
    fi
}

if [ $# -lt 2 ]
then
    echo "Two numbers required..."
    echo "Using method; $0 firstnumber secondnumber"
    exit 1
fi

x=$1
y=$2

if ! [[ $x =~ ^[[:blank:]]*[0-9]*[[:blank:]]*$ ]]
then
    echo "Wrong entry: $x"
    exit 1
fi

if ! [[ $y =~ ^[[:blank:]]*[0-9]*[[:blank:]]*$ ]]
then
    echo "Wrong entry: $y"
    exit 1
fi
MAX=$(bigger $x $y)
echo "The big one is $MAX"