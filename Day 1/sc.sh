#! /bin/bash
line=$(awk -v RS= 'END {print NR}' in.txt)
> ./ini.txt
for i in $(seq 1 $line)
do
    nmax=0
    for j in $(awk -v RS= "NR==$i" in.txt)
    do
        nmax=$(($nmax+$j))
    done
    if [[ nmax -gt max ]]; then
        max=$nmax
        maxi=$i
    fi
    echo $nmax >> ini.txt
done
nmax=0
for i in $(sort -n ./ini.txt | tail -3);
do 
    nmax=$(($i+$nmax))
done
echo $max
echo $maxi
echo $nmax
