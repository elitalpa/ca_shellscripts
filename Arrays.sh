#!/bin/bash
NAMES=( John Eric Jessica )
# write your code here
NUMBERS=(1 2 3)
STRINGS=("hello" "world")
NumberOfNames=${#NAMES[@]}
second_name=${NAMES[1]}
echo ${NUMBERS[@]}
echo ${STRINGS[@]}
echo "The number of names listed in the NAMES array: $NumberOfNames"
echo "The second name on the NAMES list is: $second_name"

# # Notes:
# - Array naming is the same as variables naming.
# - An array can hold several values under one name by assigning space-delimited values enclosed in ()
# - Array members need not be consecutive or contiguous. Some members of the array can be left uninitialized.
# - The total number of elements in the array is referenced by ${#arrayname[@]}
# - The array elements can be accessed with their numeric index. The index of the first element is 0.
