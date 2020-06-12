#!/bin/bash
echo "Welcome to Simulation"

declare -A coin
noOfFlip=100
coin["heads"]=0
coin["tails"]=0
persentOfHead=0
persentOfTail=0

for (( count=0; count<=$noOfFlip; count++ ))
do
	dic=$(( $RANDOM % 2 ))
	if (( $dic > 0 ))
	then
		coin["heads"]=$((${coin[heads]} + 1))
	else
		coin["tails"]=$((${coin[tails]} + 1))
	fi
done
echo "Heads: ${coin[heads]}"
echo "Tails: ${coin[tails]}"

persentOfHead=$(( $(( ${coin[heads]} * 100)) / $noOfFlip ))
persentOfTail=$(( $(( ${coin[tails]} * 100)) / $noOfFlip ))

echo "$persentOfHead%"
echo "$persentOfTail%"
