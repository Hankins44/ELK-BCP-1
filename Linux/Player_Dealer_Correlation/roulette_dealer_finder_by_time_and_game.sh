#!/bin/bash
# Synatx: ./roulette_dealer_finder_by_time_and_game.sh MMDD HH AM|PM #

date=$1
g_time=$2
AM_PM=$3
game=$4

if [ "$game" == 1 ]
then 
cat "$date"_Dealer_schedule | grep -E "$g_time"'.*'"$AM_PM" | tr '\t' ' ' | awk -F' ' '{print $3,$4}'
elif [ "$game" == 2 ]
then 
cat "$date"_Dealer_schedule | grep -E "$g_time"'.*'"$AM_PM" | tr '\t' ' ' | awk -F' ' '{print $5,$6}'
elif [ "$game" == 3 ]
then 
cat "$date"_Dealer_schedule | grep -E "$g_time"'.*'"$AM_PM" | tr '\t' ' ' | awk -F' ' '{print $7,$8}'
elif [ "$game" == "" ]
then 
echo "Specify the game you'd like: 1 is Black Jack, 2 is Roulette, 3 is Texas Holdem"
else 
echo "Sorry, I don't have that game."
fi

