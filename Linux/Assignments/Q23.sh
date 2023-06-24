#!/bin/bash

# This script gives the longest and shortest username in Linux.

usernames=($(cut -d ':' -f 1 /etc/passwd))

LONGEST=${usernames[0]}
SHORT=${usernames[0]}

for unames in "${usernames[@]}"
do
        if [[ ${#unames} -gt "${#LONGEST}" ]]
        then
                LONGEST=${unames}
        elif [[ ${#unames} -lt "${#SHORT}" ]]
        then
                SHORT=${unames}
        else
                echo -n
        fi
done

echo "Longest Username is : ${LONGEST}"
echo "Shortest Username is : ${SHORT}"