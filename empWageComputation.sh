#!/bin/bash

readonly WAGE_FOR_HOUR=20
readonly FULL_DAY_HOUR=8
isPresent=1
isAbsent=0
echo "Welcome to Employee Wage"

check=$((RANDOM%2))
if (($check == $isPresent ))
then
		echo "Employee Present"
		dailyWage=$(( $WAGE_FOR_HOUR * $FULL_DAY_HOUR ))
		echo "Daily Employee Wage: $dailyWage"
else
		echo "Employee Absent"
fi

