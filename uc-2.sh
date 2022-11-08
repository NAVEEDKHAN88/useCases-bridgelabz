#!/bin/bash -x
ispresent=0
randomcheck=$((RANDOM%2))

if (( $ispresent == $randomcheck))
then

 empHr=8
 empHrpr=20
salary=$(($empHr*$empHrpr))

else
   salary=0
fi
echo Daily Wage : $salary
