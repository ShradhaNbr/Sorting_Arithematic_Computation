#!/bin/bash 
declare -A computation
declare -a comp
read -p "Enter value of a" a
read -p "Enter value of b" b
read -p "Enter value of c" c
computation[result]="$(($a+$b*$c))"
computation[result1]="$(($a*$b+$c))"
computation[result2]="$(($c+$a/$b))"
computation[result3]="$(($a%$b+$c))"
comp[0]=$((computation[result]))
comp[1]=$((computation[result1]))
comp[2]=$((computation[result2]))
comp[3]=$((computation[result3]))
echo ${comp[@]}

