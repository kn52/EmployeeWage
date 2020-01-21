#!/bin/bash

readonly WAGE_FOR_HOUR=20
readonly FULL_DAY_HOUR=8
readonly PART_TIME_HOUR=4

echo "Welcome to Employee Wage"

check=$((RANDOM%3))

case $check in
	1)
		echo "Full Time Employee"
		emphrs=8
		;;
		
	2)
		echo "Part Time Employee"
		emphrs=4
		;;
	*)
		echo "Employee is Absent"
		emphrs=0
esac
echo "Employee Wage: $(($WAGE_FOR_HOUR * $emphrs))"
