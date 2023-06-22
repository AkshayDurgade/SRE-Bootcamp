#!/bin/bash

# This script prints the given number into reverse order.

NUM="${1}"
REV=0
while [[ "${NUM}" -gt 0  ]]
do
        REM=$(( ${NUM} % 10 ))
        #if [[ "${REM}" -eq 0 ]]
        #then
        #       NUM=$(( ${NUM} / 10 ))
        #       continue
        #fi
        REV=$((( ${REV} * 10 ) + ${REM} ))
        NUM=$(( ${NUM} / 10 ))
done

echo "${REV}"