#!/bin/bash

# This script parses the command line of n arguments and displays the larger number.

# Setting variable i to 1
i=1
MAX=${1}
ARGS="${#}"
#Using while loop to traverse through all the command line arguments
while [[ "${i}" -le "${ARGS}" ]]
do
        # Assigning the variable with first positional parameter.
        I=${1}
        # Checking the condition if MAX is less then the argument.
        if [[ ${I} -gt ${MAX}  ]]
        then
                MAX="${I}"
        fi
        ((i++))
        shift
done


echo "The largest number is ${MAX}."