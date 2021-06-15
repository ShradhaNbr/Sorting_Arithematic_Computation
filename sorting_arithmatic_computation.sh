#!/bin/bash -x
declare -A computation
declare -a computations
read -p "Enter value of a" a
read -p "Enter value of b" b
read -p "Enter value of c" c
computation=result=$(($a+$b*$c))
computation=result1=$(($a*$b+$c))
computation=result2=$(($c+$a/$b))
computation=result3=$(($a%$b+$c))
computations=${computation[@]}
for((i=0;i<5;++i))
do
        for((j=(($i+1));j<10;++j))
        do
        if [ ${computations[$i]} -lt ${computations[$j]} ]
        then
        temp=${computations[$i]}
        computations[i]=${computations[$j]}
        computations[j]=$temp
        fi
        done
done
echo "Numbers in descending order are ${computations[@]}"
