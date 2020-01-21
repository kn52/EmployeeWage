#!/bin/bash

readonly WAGE_FOR_HOUR=20
readonly FULL_DAY_HOUR=8
readonly PART_TIME_HOUR=4
readonly TOTAL_DAYS=20
totalhrs=0
echo "Welcome to Employee Wage"

for (( c=1; c<=$TOTAL_DAYS; c++ ))
do

	check=$((RANDOM%3))

	case $check in
		1)
			emphrs=$FULL_DAY_HOUR
			;;
			
		2)
			emphrs=$PART_TIME_HOUR
			;;
		*)
			emphrs=0 
	esac
	totalhrs=$(($totalhrs + $emphrs ))
done
monthlyWage=$(($WAGE_FOR_HOUR*$totalhrs))
echo "Monthly Wage: $monthlyWage"

