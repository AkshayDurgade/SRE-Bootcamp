#!/bin/bash

# This script removes blank lines from the file.

read -p "Enter the file path : " PATH1
echo "${PATH1}"
cat ${PATH1}

echo
echo "After removing spaces "
echo
sed '/^$/d' ${PATH1}