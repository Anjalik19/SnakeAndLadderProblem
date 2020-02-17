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
	random=$(( 1 + RANDOM % 6 ))
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


======
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

 while((player<100))
		do
			#for dice
			random=$(( 1 +  RANDOM % 6 ))
			echo "Roll Dice = $random"

			#for case
			cases=$(( RANDOM % 3))
			echo "case value : $cases"
case $cases in
0)
	player=$player
	echo "Player is at position : $player"
;;
1)
	player=$(( player+random ))
	echo "Position of player is : $player"

;;
2)
	if(($((player-random))>0))
	then
		player=$((player-random))
		echo "Player is at position : $player"
	else
		player=$player
		echo "Player is at position : $player"
	fi
;;
esac
done
}
playerFunc


=======
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

 while((player<100))
		do
			#for dice
			random=$(( 1 +  RANDOM % 6 ))
			echo "Roll Dice = $random"

			#for case
			cases=$(( RANDOM % 3))
			echo "case value : $cases"

case $cases in
0)
	player=$player
	echo "Player is at position : $player"
;;
1)
	if(($((player+random))>100))
	then
		player=$player
	else
		player=$((player+random))
		echo "Position of player is : $player"
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
	fi
;;
esac
done
}
playerFunc


=======
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
	echo "Position of player is $player"
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


=======
diceRoll()
{
		#for dice
		random=$(( 1 +  RANDOM % 6 ))
		echo "Roll Dice = $random"
}
switchCase()
{

		#for case
		cases=$(( RANDOM % 3))
		echo "case value : $cases"
		echo " "
case $cases in
0)
	player1=$player1
	echo "Position of Player 1 is : $player1"
	player2=$player2
	echo "Position of Player 2 is : $player2"
	echo " "

;;
1)
if(( $((count%2))==0 ))
   then

	if(($((player1+random))>100))
	then
		player1=$player1
	else
		player1=$((player1+random))
		echo "Position of player 1 is : $player1"
		echo " "
	fi

        else

	if(($((player2+random))>100))
	then
		player2=$player2
	else
		player2=$((player2+random))
		echo "Position of player 2 is : $player2"
		echo " "
	fi
fi

;;
2)
   if(( $((count%2))==1 ))
	then
	   player1=$((player1-random))
		if((player1<0))
		   then
		      player1=0
		fi
	        else
		      player2=$((player2-random))
		if((player2<0))
		   then
		      player2=0
		fi
   fi
;;
	esac

}

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

	player1=0
	player2=0
	count=0

while((player1<100 && player2<100))
	do
count=$((count+1))
		echo "Number of time Dice was played : $count"

	if(( $((count%2))==0 ))
		then
			diceRoll
			switchCase
			if((player1==100))
			then
				echo "!! Player 1 Won !!"
			fi
	else
			diceRoll
			switchCase
			if((player2==100))
			then
				echo "!! Player 2 Won !!"
			fi
	fi

	done

}
playerFunc
