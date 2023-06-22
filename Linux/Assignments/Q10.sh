#!/bin/bash

# This script adds all the numbers using the operator given in arguments

# Creating a function for operations

function process
{
        local args1=$1
        local args2=$2
        RESULT=0
        while [[ ${args1} > 0 ]]
        do
                 NUM=$(( args1 % 10 ))
                 RESULT=$(( ${NUM} $args2 ${RESULT} ))
                 echo "RESULT IS : ${RESULT}"
                 args1=$(( ${args1} / 10 ))
         done
        echo "${RESULT}"
}

# Seperating numbers and operators
NUMBER=$(echo "${1}" | grep -oE '[0-9]+' )
OPERATOR=$(echo "${1}" | grep -oE '[+-/*]' )

echo "${NUMBER}"
echo "${OPERATOR}"

process ${NUMBER} ${OPERATOR}