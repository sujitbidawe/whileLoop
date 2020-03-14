#! /bin/bash

money=100
betCost=1
winCheck=0
brokeCheck=0
goalMoney=200
betWon=0
#betLost=0
betWinPrice=10
totalBets=0

while [[ $money -le $goalMoney && $money -gt $brokeCheck ]]
do
		money=$(( $money-$betCost ))
		(( totalBets++ ))
		betCheck=$(( RANDOM%10 ))

		if [[ $betCheck -eq $winCheck ]]
		then
				money=$(( $money+$betWinPrice ))
				(( betWon++ ))
				echo "Won the bet!! current money is $money"
		else
				echo "Lost the bet... current money is $money"
#				(( betLost++ ))
		fi
done

if [[ $money -le $brokeCheck ]]
then
	echo all money is lost!
elif [[ $money -ge $goalMoney ]]
then
	echo goal achieved!
fi

echo "total bets placed: " $totalBets
echo "total bets won: " $betWon
#echo "total bets lost: " $betLost
