#!/bin/bash

for directory in "$@";
do
    if [ -d "$directory" ];
    then
        echo "Contents of directory '$directory':"
        echo "-----------------------------------"
        ls -lR "$directory"
        echo "-----------------------------------"
        echo
    else
        echo "Error: '$directory' is not a valid directory"
    fi
done