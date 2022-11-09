#!/bin/bash -x
#array and find second largest and second smallest by not using sort

for (( i=0; i<10; i++ ))
do
	array[$i]=$((RANDOM%900+100))
done

largest=${array[0]}
secondlargest=0

for (( s=1; s<10; s++ ))
do
	if (( ${array[$s]}>$largest ))
	then
		largest=${array[$s]}
		secondlargest=$largest
	elif  (( ${array[$s]}>$secondlargest && ${array[$s]}!=$largest || $seconlargest=0 ))
	then 
		secondlargest=${array[$s]}
	fi
done
echo largest  $largest
echo second largest is $secondlargest
echo ${array[@]}

