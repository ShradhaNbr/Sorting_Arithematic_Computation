#!/bin/bash -x
read -p "Enter value of a" a
read -p "Enter value of b" b
read -p "Enter value of c" c
result=$(($a+$b*$c))
result1=$(($a*$b+$c))
result2=$(($c+$a/$b))
