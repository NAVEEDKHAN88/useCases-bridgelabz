#!/bin/bash -x

isPartTime=1
isFullTime=2
maxRateInMonth=100
empRatePerHrs=20
numOfWorkingDays=20

totalEmpHr=0
totalWorkingdays=0

function getWorkHours()
{
	randomCheck=$((RANDOM%3))
	case $randomCheck in
				$isPartTime )
					empHrs=4
	OOA			;;

				$isFullTime )
					empHrs=5
				;;

				*)
					empHrs=0
				;;
	esac
}

while [[ $totalEmpHr -lt $maxRateInMonth &&
         $totalWorkingDays -lt $numOfWorkingDays ]]
do
	((totalWorkingDays++))
	getWorkHours
	totalEmpHr=$(($totalEmpHr+$empHrs))
done

totalSalary=$(($totalEmpHr*$empRatePerHrs))
echo $totalSalary

