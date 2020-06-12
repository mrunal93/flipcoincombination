#!/bin/bash
echo "Welcome to Simulation"

declare -A coin
noOfFlip=50
coin["heads"]=0
coin["tails"]=0

for (( count=0; count<=$noOfFlip; count++ ))
do
	dic=$(( $RANDOM % 2 ))
	if (( $dic > 0 ))
	then
		echo "Head"
		coin["heads"]=$((${coin[heads]} + 1))
	else
		echo "Tail"
		coin["tails"]=$((${coin[tails]} + 1))
	fi
done
echo "Heads: ${coin[heads]}"
echo "Tails: ${coin[tails]}"



