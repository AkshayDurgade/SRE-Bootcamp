#!/bin/bash

# This script deletes all the .swp files in our system or if given in command line then from the given directory.
# This script is not able to delete all the files in all directories.

if [[ "${#}" -eq 0 ]]
then
        DIR=$(cd /~)
else
        DIR=${1}
fi

FILES1=$(find ${DIR} -type f -name "*.swp")

if [ -n "${FILES1}" ]; then
    echo "Deleting .swp files:"
    echo "${FILES1}"
    rm -f ${FILES1}
else
    echo "No .swp files found."
fi