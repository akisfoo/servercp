#!/bin/bash
# print only the directories inside /var/www/html

cd /var/www/html
echo -e "available directories on $HOSTNAME:\e[01;94m"
ls -lF | grep ^d | awk '{ print $9 }'
echo -en "\e[0m"
