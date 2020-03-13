#! /bin/bash

givenPower=$1
base=2
maxPower=8
power=1
maxValue=256

while [[ power -le givenPower && value -lt maxValue ]]
do

	value=`echo "$base^$power" | bc`
	echo $value
	(( power++ ))

done
