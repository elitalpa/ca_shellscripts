#!/bin/bash
function File {
    # think you are inside the file
    # Change here
    echo $#
}

# Do not change anything
if [ ! $# -lt 1 ]; then
    File $*
    exit 0
fi

# change here
# here you can pass the arguments
bash $0 Shell is fun

# # Notes:
# - Arguments can be passed to the script when it is executed, by writing them as a space-delimited list following the script file name.
# - The $1 variable references the first argument in the command line, $2 the second argument and so forth. The variable $0 references to the current script.
# - The variable $# holds the number of arguments passed to the script
# - The variable $@ holds a space delimited string of all arguments passed to the script