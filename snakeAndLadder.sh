#!/bin/sh
rolls()
   {
	for((i=0;i<6;i++))
	     do
		random=$(( 1 + RANDOM % 6 ))
		    done
			echo "Number after rolling Dice : $random"
   }
rolls
