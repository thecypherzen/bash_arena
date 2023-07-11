echo -e "Generate up to number: \c"
read n

for ((i=1;i<=$n;i++)); do
    for ((j=1;j<=12;j++)); do
	if [ $j -eq 12 ]; then
	    echo "$(($i*$j))"
	else
	    echo -e "$(($i*$j))\t\c"
	fi
    done
done
