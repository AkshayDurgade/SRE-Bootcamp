#!/bin/bash

# This script prints the number of users between 100 and 1000

if [[ "${#}" -lt 1  ]]
then
        LID=500
        UID1=10000
elif [[ "${#}" -lt 2 ]]
then
        LID=${1}
        UID1=10000
else
        LID=${1}
        UID1=${2}
fi

userids=($(cut -d ':' -f 3 /etc/passwd))
COUNT=0
for ui in "${userids[@]}"
do
        if [[ "${ui}" -gt "${LID}" && "${ui}" -lt "${UID1}" ]]          then
                echo "${ui} Inside IF"
                COUNT=$(( ${COUNT} + 1 ))
        fi
done

echo "No. of user ids between ${LID} and ${UID1} are : ${COUNT}"