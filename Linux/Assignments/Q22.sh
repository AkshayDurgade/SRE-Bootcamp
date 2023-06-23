#!/bin/bash

# This converts the content of the file into upper or lower case

read -p "Enter the file name or file path : " FILE1

echo "1.) Upper to Lower"
echo "2.) Lower to Upper"
read -p "Enter Your Choice ; " CHOICE

case ${CHOICE} in
        1)
                (cat ${FILE1} | tr '[:upper:]' '[:lower:]')
                ;;
        2)
                (cat ${FILE1} | tr '[:lower:]' '[:upper:]')
                ;;
        *)
                echo "Wrong Choice"
                ;;
esac