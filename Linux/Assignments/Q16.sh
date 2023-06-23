#!/bin/bash

# This script prints the less than or equal number of Fibonacci Series as entered by the user.

# Reading number from user.
read -p "Enter the number : " NUM

A=0
B=1
RESULT=0

# Using for loop for fibonacci series
for (( i=0 ;  ; i++ ))
do
        RESULT=$(( ${A} + ${B} ))

        # Checking for RESULT is greater than NUM, if greater than break.
        if [[ ${RESULT} -gt ${NUM} ]]
        then
                break;
        fi
        A=${B}
        B=${RESULT}
done

# Display the var B to find the greater or lowest number.
echo "${B}"