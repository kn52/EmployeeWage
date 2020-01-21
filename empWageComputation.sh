#!/bin/bash

readonly WAGE_FOR_HOUR=20
readonly FULL_DAY_HOUR=8
readonly PART_TIME_HOUR=4

echo "Welcome to Employee Wage"

check=$((RANDOM%3))

if (( $check ==  1 ))
then
	echo "Full Time Employee"
	fullTimeWage=$(( $WAGE_FOR_HOUR * $FULL_DAY_HOUR ))
	echo "Employee Wage: $fullTimeWage"
elif (( $check == 2 ))
then
	echo "Part Time Employee"
        partTimeWage=$(( $WAGE_FOR_HOUR * $PART_TIME_HOUR ))
        echo "Employee Wage: $partTimeWage"
else
		echo "Employee Absent"
fi

