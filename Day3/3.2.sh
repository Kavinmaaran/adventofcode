#!/bin/bash

val=0
input="./in.txt"
while read line1; read line2; read line3;
do
    com=$(comm -12 <(fold -w1 <<< $line1 | sort -u) <(fold -w1 <<< $line2 | sort -u) | tr -d '\n'7)
    value=$(comm -12 <(fold -w1 <<< $com | sort -u) <(fold -w1 <<< $line3| sort -u) | tr -d '\n' | od -An -tuC)
    if [[ $value -lt 92 ]] 
    then

        val=$(($val+$value-38))
    else
        val=$(($val+$value-96))
    fi
    # value=$(($value+$(comm -12 <(fold -w1 <<< $s1 | sort -u) <(fold -w1 <<< $s2| sort -u) | tr -d '\n')))
done < $input

echo $val
