#!/bin/bash
echo "Enter some names separated with space:"
read -a NAMES
i=0
j=${#NAMES[@]}
echo -e "You entered $j names. Here they are:"

while [ $i -lt $j ]; do
    echo "$(($i+1)). ${NAMES[$i]}"
    i=$(($i+1))
done
