#!/bin/sh



echo "         " "************************************"
echo "         " "* WELCOME TO SNAKE AND LADDER GAME *"
echo "         " "*                                  *"
echo "         " "************************************"
echo " "
a=10
for(( i=$a; i>0; i--))
     do
	if(($(($i%2))==0))
	     then
		val=$((i*a))
		gap=-1
	else
		val=$(($(($i-1))*$a+1))
		gap=1
	fi
for((j=$a; j>0; j--))
    do
	if(($i==1))
	    then
		echo -n "| $val  |"
		val=$(($val+$gap))
		     else
			echo -n "| $val |"
			val=$(($val+$gap))
	fi
    done
echo
echo "|----------------------------------------------------------|"
  done
=======
echo "Game Started"
=======
rolls()
   {
	for((i=0;i<6;i++))
	     do
		random=$(( 1 + RANDOM % 6 ))
		    done
			echo "Number after rolling Dice : $random"
   }
rolls

=======
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
	player=0
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

