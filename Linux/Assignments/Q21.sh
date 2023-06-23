#!/bin/bash

# This script displays wishes according to time.
CURTIME=$(date "+%I:%M:%S %p")

if [[ $(date -d "${CURTIME}" +%s) -gt $(date -d "5:00:00 AM" +%s) && $(date -d "${CURTIME}" +%s) -lt $(date -d "11:59:59 AM" +%s)  ]]
then
        echo -n "Good Morning User."
elif [[ $(date -d "${CURTIME}" +%s) -gt $(date -d "12:00:00 PM" +%s) && $(date -d "${CURTIME}" +%s) -lt $(date -d "1:59:59 PM" +%s)  ]]
then
        echo -n "Good Noon User"
elif [[ $(date -d "${CURTIME}" +%s) -gt $(date -d "2:00:00 PM" +%s) && $(date -d "${CURTIME}" +%s) -lt $(date -d "4:59:59 PM" +%s)  ]]
then
        echo -n "Good Afternoon User"
elif [[ $(date -d "${CURTIME}" +%s) -gt $(date -d "5:00:00 PM" +%s) && $(date -d "${CURTIME}" +%s) -lt $(date -d "8:59:59 PM" +%s)  ]]
then
        echo -n "Good Evening User"
else
        echo -n "Good Night"
fi
echo "Have a nice day!!"
echo "It's $(date "+%A, %d %B %Y - %I:%M:%S %p ")"