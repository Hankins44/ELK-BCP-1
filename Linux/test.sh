#!/bin/bash
paths=( /etc/shadow /etc/passwd )
for path in ${paths[@]};
do
ls -l $path
done
home=(${ls /home}) 
for User in $home;
do
echo $User
if  sudo -l -U $User shutdown > /dev/null
then
echo "$User is a sudoer"
else
echo "$User is not a sudoer"
fi
done
