#!/bin/bash -x

isPartTime=1
isFullTime=2
maxRateInMonth=100
empRatePerHr=20
numOfWorkingDays=20

totalEmpHr=0
totalWorkingDays=0

function getWorkHours()
{
 randomCheck=$((RANDOM%3))
 case $randomCheck in

			$isFullTime )
				empHrs=4
			;;

			$isPartTime )
				empHrs=8
			;;
			*)
 				empHrs=0
			;;
esac
}

function getEmpWage()
{
echo $(($totalEmpHr*$empRatePerHr))
}

 while [[ $totalEmpHr -lt $maxRateInMonth  &&
          $totalWorkingDays -lt $numOfWorkingDays ]]
do
    	((totalWorkingDays++))
	getWorkHours
	totalEmpHr=$(($totalEmpHr+$empHrs))
   dailyWage[$totalWorkingDays]=$(($empHrs*$empRatePerHr))
done


totalSalary=$( getEmpWage )
echo $totalSalary
echo ${dailyWage[@]:0} 


