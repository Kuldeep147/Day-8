#!/bin/bash -x

#take range 0-100 find the digits that are repeated twice like 33,77 and
# store in array

for (( i=0; i<=100; i++ ))
do
	if (( $(($i/10))==$(($i%10)) ))
	then
		array[$i]=$i
	fi
done
echo ${array[@]}
