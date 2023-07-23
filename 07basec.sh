#!/bin/bash
#This script converts numbers from decimal to base between 2 and 36
echo "Converting $1 to base $2 ..."

# barr - array of char representation of bases from 10 - 19
# carr - array of bases from 10 - 19

barr=(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) #array b
carr=(10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 \
	 33 34 35) #array c
blen=${#barr[@]} #len of barr
clen=${#carr[@]} #len of carr

res=""
temp=0
rem=0
num=$1
obase=$2

while (( $num )); do
    temp=$(( $num / $obase ))
    rem=$(( $num % $obase ))
    num=$temp
    #assign letters to nums from 10 to 35
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
echo "$1 [Decimal] = $dec [Base $2]"
