#!/bin/bash

# This script changes the name of current directory.

# Displaying the current directory.
pwd
DIR=$(pwd)
echo "${DIR}"

# Finding and saving the current directory name.
PDIR=$(dirname "${DIR}")
echo ${PDIR}
pwd
cd ${PDIR}
pwd
ls

# Changing the name of current directory.
read -p "Enter the new name you want to give to the directory : " NDIR

echo "mv ${PDIR}" "${NDIR}"
mv ${DIR} ${NDIR}