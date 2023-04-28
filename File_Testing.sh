#!/bin/bash

function file_exists {
    filename=$thepath
    if [ -e "$filename" ]; then # use "-e" to test if file exist
        echo
        echo "$filename exists as a file"
    else
        echo
        echo "$filename does not exist as a file"
    fi
}


function directory_exists {
    directory_name=$thepath
    if [ -d "$directory_name" ]; then # use "-d" to test if directory exists
        echo
        echo "$directory_name exists as a directory"
    else
        echo
        echo "$directory_name is not a directory"
    fi
}

function read_permission {
    filename=$thepath
    if [ ! -f "$filename" ]; then # use "-r" to test if file has read permission for the user running the script/test
        echo
        echo "you can create the file with 'touch "$filename"' "
    fi
    if [ -r "$filename" ]; then # use "-r" to test if file has read permission for the user running the script/test
        echo
        echo "you are allowed to read $filename"
    else
        echo
        echo "you are not allowed to read $filename"
    fi
}

function optionmenu {
PS3=$'\n'"There is no exercise for this section on learnshell.org by the way."$'\n'"Please enter your choice: "
option1="test if file exists"
option2="test if directory exists"
option3="test if file has read permission for you"
options=("$option1" "$option2" "$option3" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "$option1")
            file_exists
            ;;
        "$option2")
            directory_exists
            ;;
        "$option3")
            read_permission 
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option: $REPLY";;
    esac
done
}

if [ $1 ] ; then
    thepath=$1
    optionmenu
else
    read -p "Filename : " thepath
    echo
    optionmenu
fi
