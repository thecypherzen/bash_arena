# milli - a function which returns the time since midnight in milliseconds.
# @h - hours argument passed
# @m - minutes argument passed
# @s - seconds argument passed
# return: time in milliseconds

millisec(){
    h=$(($1*1000*3600))
    m=$(($2*1000*60))
    s=$(($3*1000))
    echo $(($h + $m + $s))
}

# | $(date +%T)"
time=$(millisec $1 $2 $3)
echo $time
