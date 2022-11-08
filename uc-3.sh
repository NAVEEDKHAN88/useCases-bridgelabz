#!/bin/bash -x

isparttime=1
isfulltime=2
emprateperhr=20
randomcheck=$((RANDOM%3))

if (( $isparttime == $randomcheck ))
then 

     emphr=4

elif (( $isfulltime == $randomcheck ))
then
      emphr=8

else

  emphr=0
fi
salary=$(($emphr*$emprateperhr))
