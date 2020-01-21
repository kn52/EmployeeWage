#!/bin/bash

isPresent=1
echo "Welcome to Employee Wage"

check=$((RANDOM%2))
if (($check == $isPresent ))
then
		echo "Employee Present"
else
		echo "Employee Absent"
fi

