#!/bin/sh
player()
    {
	echo "Snake and Ladder positions"
	echo "START=1  FINISH=100"
	echo "LADDERS : 6 to 27"
	echo "        : 37 to 65"
	echo "        : 59 to 80"
	echo "        : 74 to 93"
	echo "SNAKES  : 39 to 3"
	echo "        : 55 to 36"
	echo "        : 73 to 56"
	echo "        : 98 to 7"
	random=$(( 1 +  RANDOM % 6 ))
	echo "Roll Dice = $random"
	player=1
	cases=$(( RANDOM % 3))
	echo "case value : $cases"

case $cases in
0)
	player=$player
	echo "Player is at position : $player"
;;
1)
	player=$(( $player+$random ))
	echo "Position of player is : $player"
;;
2)
	player=$(($player-$random))
	echo "Player is at position : $player"
;;
esac
}
player
