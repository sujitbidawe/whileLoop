#! /bin/bash

echo "think of a number between 1 and 100"

min=1
max=100
numberCheckFlag=0

while [[ $numberCheckFlag -eq 0 ]]
do
		mid=$(( ($min+$max)/2 ))
		echo "enter 0 if $mid is your number"
		echo "enter 1 if your number is lesser than $mid"
		echo "enter 2 if your number is greater than $mid"
		read choice

		case $choice in
				0)
						echo your number is $mid
						numberCheckFlag=1
						;;
				1)
						max=$mid
						;;
				2)
						min=$mid
						;;
				*)
						echo enter a valid choice
						;;
		esac
done
