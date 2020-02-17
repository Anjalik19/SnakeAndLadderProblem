#!/bin/sh
rolls()
   {
	random=$(( 1 + RANDOM % 6 ))
	echo "Number after rolling Dice : $random"
   }
rolls
