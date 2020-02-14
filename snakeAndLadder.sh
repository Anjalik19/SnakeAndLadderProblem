#!/bin/sh
a=10
val=0
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
