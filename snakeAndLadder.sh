#!/bin/sh
playerFunc()
{
	echo "Snake and Ladder positions"
	echo "START=1  FINISH=100"
	echo "LADDERS : 6 to 27"
	echo "        : 25 to 55"
	echo "        : 37 to 65"
	echo "        : 59 to 80"
	echo "        : 74 to 93"
	echo "SNAKES  : 39 to 3"
	echo "        : 55 to 36"
	echo "        : 61 to 2"
	echo "        : 75 to 37"
	echo "        : 98 to 70"

	player=0
	count=0

while((player<100))
	do
		count=$((count+1))
		echo "Number of time Dice was played : $count"
		#for dice
		random=$(( 1 +  RANDOM % 6 ))
		echo "Roll Dice = $random"
		#for case
		cases=$(( RANDOM % 3))
		echo "case value : $cases"


case $cases in
0)
	player=$player
	echo " Position of player is $player "
	echo " "

;;
1)
	if(($((player+random))>100))
	then
	player=$player
	else
	player=$((player+random))
	echo "Position of player is : $player"
	echo " "
	fi

;;
2)
	if(($((player-random))>0))
	then
	player=$((player-random))
	echo "Player is at position : $player"
	else
	player=$player
	echo "Player is at position : $player"
	echo " "
	fi
;;
esac
	done

}
playerFunc
