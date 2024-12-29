#!/bin/bash

destination=/var/www/html/
server=""
host=""

if [ "$1" == "ls" ]; then
    ssh -t $host bash code/bash/dirs
    exit
fi

if [ $# -ne 2 ]; then
    echo "usage: servercp <filename> <destination dir>"
else 
    scp $1 $host:$destination$2/
    echo "file copied to $server at $destination$2"
    echo "http://$server/$2/$1" | xclip -selection primary
    echo -e "link copied to clipboard: \e[1mhttp://$server/$2/$1\e[0m"
fi
