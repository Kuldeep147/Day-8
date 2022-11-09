#!/bin/bash -x
#to sort the array and find second largest and second smallest

for (( i=0; i<10; i++ ))
do
	array[$i]=$((RANDOM%900+100))
done
echo ${array[@]}
printf '%s\n' "${array[@]}"| sort -n | tail -2 | head -1
printf '%s\n' "${array[@]}"| sort -rn | tail -2 | head -1
