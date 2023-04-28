#!/bin/bash

function booh {
# notice you cannot make Ctrl-C work in this shell, 
# try with your local one, also remeber to chmod +x 
# your local .sh file so you can execute it!

trap "echo Booh!" SIGINT SIGTERM # or # trap "echo Booh!" 2 15 # with numbers from signal types list (kill -l)
echo "it's going to run until you hit Ctrl+Z"
echo "hit Ctrl+C to be blown away!"

while true        
do
    sleep 60       
done
}


PS3=$'\n'"There is no exercise for this section."$'\n'"Please enter your choice: "
option1="booh function loop"
option2="Check out all signal types"
options=("$option1" "$option2" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "$option1")
            booh
            ;;
        "$option2")
            echo
            kill -l # check out all signal types
            break
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option: $REPLY";;
    esac
done

# # Notes:
# - It often comes the situations that you want to catch a special signal/interruption/user input in your script to prevent the unpredictables.
# - `trap <arg/function> <signal>`
# - Some of the common signal types you can trap:
#   - SIGINT: user sends an interrupt signal (Ctrl + C)
#   - SIGQUIT: user sends a quit signal (Ctrl + D)
#   - SIGFPE: attempted an illegal mathematical operation
# - kill -l # check out all signal types
# trap "rm -f folder; exit" 2 # one of the common usage of trap is to do cleanup temporary files
