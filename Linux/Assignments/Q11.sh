#!/bin/bash

# This script prints Fibonacci series upto n numbers

read -p "Enter the number upto which you want Fibonacci Series : " LIM

RESULT=0
A=0
B=1
echo -n "0, "
for (( i=0 ; RESULT < $(( ${LIM} - ${A} ))  ; i++ ))
do
        RESULT=$(( ${A} + ${B} ))
        A=$(( ${B} ))
        B=$(( ${RESULT} ))
        echo -n "${RESULT}, "
done