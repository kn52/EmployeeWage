#!/bin/bash -x
declare -A dailyDict
readonly WAGE_FOR_HOUR=20
readonly TOTAL_DAYS=20
readonly TOTAL_HOURS=100
isPartTime=2
isFullTime=1
totalHrs=0
days=0
function getHours()
{
	case $1 in
		$isFullTime)
			empHrs=8
			((days++))			
			;;
			
		$isPartTime)
			empHrs=4
			((days++))
			;;
		*)
			empHrs=0 
	esac
	echo $empHrs
}
echo "Welcome to Employee Wage"

while (( $totalHrs < $TOTAL_HOURS && $days < $TOTAL_DAYS ))
do
	empHrs=$( getHours $((RANDOM%3)) )
	totalHrs=$(( $totalHrs + $empHrs ))
	dailyDict[$days]=$(( $WAGE_FOR_HOUR * $empHrs))
done
monthlyWage=$(($WAGE_FOR_HOUR*$totalHrs))
echo "${!dailyDict[@]}"
echo "${dailyDict[@]}"
echo "Monthly Wage: $monthlyWage"


