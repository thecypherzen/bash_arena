#!/bin/bash
#This script converts numbers from one base to another between 2 and 36
echo "Converting $1 from base $2 to base $3 ..."

sleep 1

# barr - array of char representation of numbers from 10 - 35
# carr - array of numbers from 10 - 35
# bar[i] corresponds to carr[i] for conversion.

barr=(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)
carr=(10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 \
	 33 34 35)

blen=${#barr[@]} #len of barr
clen=${#carr[@]} #len of carr

res=""
temp=0
rem=0
num=$1
in_base=$2;
out_base=$3
num_bten=$(($in_base#$num)) # convert num to number in base 10


while (( $num_bten )); do
    temp=$(( $num_bten / $out_base ))
    rem=$(( $num_bten % $out_base ))
    num_bten=$temp
	    #assign letters to temp from A-Z if rem in range 10..35 else use\
		#numerical value of temp
    if (( $rem >= 10 )); then
	for (( i=0; i<$clen; i++ )); do
	    #get corresponding letter from array of numbers (carr).
	   if (( $rem == ${carr[$i]} )); then
	       temp=${barr[$i]}
	       if [ $i -ne $(($clen - 1)) ]; then
		   i=$(($clen - 1))
	       fi
	   fi
       done
    else
	temp=$rem
    fi
    res+=$temp
done

dec=$(echo $res | rev)
echo "$1 [base $2] = $dec [base $3]"
