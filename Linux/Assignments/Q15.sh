#!/bin/bash

# This script prints all the system  information.

echo "Currently logges users : $(whoami)"
echo "Your shell directory : $(pwd)"
echo "Your home directory details : $(ls /home)"
echo "OS Name : $(uname -a)"
echo "OS Version : $(uname -v)"
echo "Current Working Directory : $(pwd)"
echo "Nummber of users logged in : $(w)"
echo "All available shells in system : $(cat /etc/shells)"
echo "Hard disk information : $(df -h)"
echo "CPU information : $(lscpu)"
echo "Memory information : $(free -h)"
echo "File system info : $(df)"
echo "All running processes : $(ps aux)"