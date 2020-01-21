#!/bin/bash

readonly WAGE_FOR_HOUR=20
readonly FULL_DAY_HOUR=8
readonly PART_TIME_HOUR=4
readonly TOTAL_DAYS=20
readonly TOTAL_HOURS=100

totalhrs=0
days=0
echo "Welcome to Employee Wage"

while (( $totalhrs < $TOTAL_HOURS || $days < $TOTAL_DAYS ))
do
	((days++))
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

