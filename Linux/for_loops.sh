#!/bin/bash
my_list=( 'Pennsylvania' 'Vermont' 'Georgia' 'California' 'North Carolina' 'Hawaii' )
for state in ${my_list[@]};
do
    if [ $state != 'Hawaii' ]
    then
    echo "I'm not fond of Hawaii"
    else
    echo "Hawaii is the best!"
    fi
done

nums=( 0 1 2 3 4 5 6 7 8 9 )
my_nums=( 3 5 7 )
for num in ${nums[@]};
do
    if [ $num in $my_nums ]
    then
    echo $num
    fi
done
