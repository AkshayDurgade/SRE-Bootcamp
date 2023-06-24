#!/bin/bash

# This script finds and gives the output if the user is present in the system.

USER1=${1}

usernames=($(cut -d ':' -f 1 /etc/passwd))

# For loop for traversing the arrray and checking if the user exist or not.
# Flag to check for if condition.
FLAG=0
for unames in ${usernames[@]}
do
        if [[ "${unames}" ==  "${USER1}" ]]
        then
            # Flag to 1 if user is present 
                FLAG=1
                break
        fi
done

# IF statement to check if the user exist in the system or not.
if [[ ${FLAG} -eq 1 ]]
then
        echo "${1} exists"
else
        echo "${1} does not exists."
fi