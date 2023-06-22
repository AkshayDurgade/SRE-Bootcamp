#Write the shell script that will get the system information like current Date,
# Display system hostname, Display the kernal information, Display the memory utilization,
# Display the disk utilization


#!/bin/bash


# Asking the user what details he/she want
echo "Hello, here you can see the system details you want."
VAR=1

until [[ ${VAR} -eq 0 ]]
do
        echo "----------------------------------"
        echo -e "0.) Exit\n1.) Display Date\n2.) Display Host Name\n3.) Display Kernel Information\n4.) Display Memory Utilisation\n5.) Display CPU utilization"
        read -p "Enter your choice : " VAR
        echo "${VAR}"

        # Displaying the current date

        case ${VAR} in
                1)
                        echo "Displaying the current date"
                        echo "$(date +%Y-%m-%d)"
                        ;;
                2)
                        echo "Your hostname is : $(hostname -f)"
                        ;;
                3)
                        echo "Displaying the operating system details"
                        echo "$(uname -a)"
                        echo
                        echo "Displaying Kernel Version information"
                        echo "$(uname -v)"
                        echo
                        echo echo "Displaying Kernel release information"
                        echo "$(uname -r)"
                        ;;
                4)
                        echo "Displaying Memory Utilisation"
                        echo "$(free -h)"
                        ;;
                5)
                        echo "Displaying the Disk  Utilisation"
                        echo "$(df -h)"
                        ;;
                0)
                        echo "You chose to exit."
                        ;;
                *)
                        echo "Wrong Choice"
                        ;;
        esac
done