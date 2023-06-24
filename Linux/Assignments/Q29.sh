#!/bin/bash

# This script changes the directories permissions.

read -p "Enter the path to the directory : " DIR

echo "Before Changing : "
ls -l ${DIR}
echo
chmod 777 ${DIR}
echo "After Changing : "
ls -l ${DIR}