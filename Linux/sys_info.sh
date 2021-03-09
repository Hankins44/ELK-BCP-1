#!/bin/bash

output=~/research/sys_info.txt
ip=ip addr | head -9 | tail -1

if [ -d ~/research ]
then
else
    mkdir ~/research 2> /dev/null
fi

if [ ! -f ~/research/sys_info.txt ]
then
else
    rm -f ~/research/sys_info.txt
fi

echo "A Quick System Audit Script" > $output
date >> $output
echo "" >> $output
echo "Machine Type Info:" >> $output
echo $MACHTYPE >> $output
echo -e "Uname info: $(uname -a) \n" >> $output
echo -e "IP Info: $ip \n" >> $output
echo "Hostname: $(hostname -s) " >> $output
echo -e "\n777 Files:" >> $output
find / -type f -perm 777 >> $output
echo -e "\nTop 10 Processes" >> $output
ps aux -m | awk {'print $1, $2, $3, $4, $11 '} | head >> $output

