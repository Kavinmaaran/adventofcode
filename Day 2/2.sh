#!/bin/bash

# A X 4
# A Y 8
# A Z 3
# B X 1
# B Y 5
# B Z 9
# C X 7
# C Y 2
# C Z 6

declare -A rps

# rps['A X']=4
# rps['A Y']=8
# rps['A Z']=3
# rps['B X']=1
# rps['B Y']=5
# rps['B Z']=9
# rps['C X']=7
# rps['C Y']=2
# rps['C Z']=6

# A X 4
# A Y 8
# A Z 3
# B X 1
# B Y 5
# B Z 9
# C X 7
# C Y 2
# C Z 6


rps['A X']=3
rps['A Y']=4
rps['A Z']=8
rps['B X']=1
rps['B Y']=5
rps['B Z']=9
rps['C X']=2
rps['C Y']=6
rps['C Z']=7

input="./ini.txt"
value=0
while IFS= read -r line
do
    # echo $value
    # echo $line
    value=$(($value+${rps[$line]}))
done < $input

echo $value


