#!bin/bash
echo "Welcome to Simulation"

dic=$(( $RANDOM % 2 ))
if (($dic -eq 0 ))
then
	echo "Head"
else
	echo "Tail"
fi
