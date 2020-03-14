#! /bin/bash

heads=0
tails=0

while [[ $heads -ne 11 && $tails -ne 11 ]]
do
		coinFlip=$(( RANDOM%2 ))
		if [[ $coinFlip -eq 0 ]]
		then
				(( heads++ ))
		else
				(( tails++ ))
		fi
		echo $heads heads, $tails tails
done
