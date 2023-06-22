#!/bin/bash

# This script solves mathematical equations based on command line argument

# We take the operator and save it in OPERATOR variable.
OPERATOR="${2}"

# Depending upon our operator we decide the operation to perform on our argument.i
case ${2} in
        +)
                echo "The sum of ${1} and ${2} is : $(( ${1} + ${3} )) "
                ;;
        -)
                echo "The subtraction  of ${1} and ${2} is : $(( ${1} -  ${3} )) "
                ;;
        *)
                echo "The multiplication  of ${1} and ${2} is : $(( ${1} *  ${3} )) "
                ;;
        /)
                echo "The division  of ${1} and ${2} is : $(( ${1}  ${3} )) "
                ;;
esac