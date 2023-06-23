#!/bin/bash

# This script converts the directory name to uppercase to lowercase and vice versa

# Asking the path to which you want to see directory
read -p "Enter the path to directory : " DIR

# Displaying all the directories present in that directory
cd "${DIR}"
ls -d */

# Asking which directory to rename.
read -p "Enter the directory name to change : " DIR

#Storing it in a variable
DIR1=$(echo "${DIR}" | tr '[:upper:][:lower:]' '[:lower:][:upper:]')
echo "${DIR1}"
echo "mv ${DIR} ${DIR1}"
# Changing upper to lower and vice versa
mv "${DIR}" "${DIR1}"
ls -d */