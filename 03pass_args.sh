#!/bin/bash
entries=("$@")
#echo "All args: $@"
#echo "Total args:$#"
#echo "First entry: ${entries[0]}"

for ((i=0;i<$#;i++))
do
    echo "Entry $(($i+1)).${entries[$i]}"
done

