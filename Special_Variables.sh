#!/bin/bash
echo
echo "There is no exercise for this section."
echo
echo "Script Name: $0"
echo
function func1 {
    for var in $*
    do
        let i=i+1
        echo "The \$${i} argument is: ${var}"
    done
    echo
    echo "Total count of arguments: $#"
    echo
    echo
}

function func2 { #$@ and $* have different behavior when they were enclosed in double quotes.
    echo "--- \"\$*\""
    for ARG in "$*"
    do
        echo $ARG
    done

    echo
    
    echo "--- \"\$@\""
    for ARG in "$@"
    do
        echo $ARG
    done

    echo
}

func1 Here are some arguments
func2 Here are some arguments
echo "There is no exercise for this section."

# - special variables in shell:
#   - $0 - The filename of the current script.|
#   - $n - The Nth argument passed to script was invoked or function was called.|
#   - $# - The number of argument passed to script or function.|
#   - $@ - All arguments passed to script or function.|
#   - $* - All arguments passed to script or function.|
#   - $? - The exit status of the last command executed.|
#   - $$ - The process ID of the current shell. For shell scripts, this is the process ID under which they are executing.|
#   - $! - The process number of the last background command.|