#! /bin/bash

backup="$HOME/backup-$(date +%Y%m%d-%H%M%S)"

if [ ! -d backup ]
then
    /bin/mkdir  $backup
fi

for file in $(ls)
do
    if [ -f $file ]
    then
    echo "$file copying..."
    /bin/cp -p $file $backup
    fi
done