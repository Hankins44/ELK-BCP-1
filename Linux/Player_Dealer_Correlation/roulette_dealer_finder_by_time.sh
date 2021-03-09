#!/bin/bash
# Synatx: ./rouleette_dealer_finder_by_time.sh MMDD HH AM|PM
cat $1_Dealer_schedule | grep -E $2'.*'$3 | tr '\t' ' ' | awk -F' ' '{print $5,$6}'
