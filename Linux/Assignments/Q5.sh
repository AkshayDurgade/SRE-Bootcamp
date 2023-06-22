#!/bin/bash

# This script does addition of two numbers.

read -p "Enter the number 1 : " VAR1
echo "${VAR1}"
read -p "Enter the number 2 : " VAR2

VAR3=$(echo "${VAR1} + ${VAR2}" | bc)
echo ${VAR3}