#!/bin/bash

# This script takes input from command line, stores it an array and then print all the string length.

# Storing the Command line args into arr.
arr=("${@}")

# Traversing the array and using # to diplay the length.
for args1 in "${arr[@]}"
do
        echo "The length of ( ${args1} ) is : ( ${#args1} )."
done