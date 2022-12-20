#!/bin/bash

val=0
input="./in.txt"
while IFS= read -r line
do
    n=${#line}
    s1=${line:0:$n/2}
    s2=${line:$n/2}
    value=$(comm -12 <(fold -w1 <<< $s1 | sort -u) <(fold -w1 <<< $s2| sort -u) | tr -d '\n' | od -An -tuC)
    if [[ $value -lt 92 ]] 
    then

        val=$(($val+$value-38))
    else
        val=$(($val+$value-96))
    fi
    # value=$(($value+$(comm -12 <(fold -w1 <<< $s1 | sort -u) <(fold -w1 <<< $s2| sort -u) | tr -d '\n')))
done < $input

echo $val
