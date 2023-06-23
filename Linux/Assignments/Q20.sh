#!/bin/bash

# This script displays the content of a file between two given lines.

# Taking the file name.
read -p "Enter the name of file : " FILE1

# Taking start and endin line from user.
read -p "Start line : " S
read -p "End line : " E

# Displaying the content of the file.
head -n ${S} ${FILE1} | tail -n $(( ${E} - ${S} + 1 ))