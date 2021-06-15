#!/bin/bash -x
declare -A computation
declare -a comp
read -p "Enter value of a" a
read -p "Enter value of b" b
read -p "Enter value of c" c
computation[result]="$(($a+$b*$c))"
computation[result1]="$(($a*$b+$c))"
computation[result2]="$(($c+$a/$b))"
computation[result3]="$(($a%$b+$c))"
i=0
comp[$i]=${computation[@]}
echo ${comp[@]}
echo ${#comp[@]}
