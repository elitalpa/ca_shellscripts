#!/bin/bash
NUMBERS=(951 402 984 651 360 69 408 319 601 485 980 507 725 547 544 615 83 165 141 501 263 617 865 575 219 390 237 412 566 826 248 866 950 626 949 687 217 815 67 104 58 512 24 892 894 767 553 81 379 843 831 445 742 717 958 609 842 451 688 753 854 685 93 857 440 380 126 721 328 753 470 743 527)

# write your code here
for n in ${NUMBERS[@]} ; do
    if [ $n -eq 237 ]; then # if number is equal to 237 then break
        break
    elif [ $(($n % 2)) == 0 ]; then # if number modulo 2 (what remains after number is divised by 2) is equal to 0 then output the number
        echo $n
    fi
done

# # Notes:
#
# - bash for loop
# ```shell
# # basic construct
# for arg in [list]
# do
#  command(s)...
# done
# # For each pass through the loop, arg takes on the value of each successive value in the list. Then the command(s) are executed.
# ```
# 
# - bash while loop
# ```shell
# # basic construct
# while [ condition ]
# do
#  command(s)...
# done
# # The while construct tests for a condition, and if true, executes commands. It keeps looping as long as the condition is true.
# ```
# 
# - bash until loop (opposite of while construct)
# ```shell
# # basic construct
# until [ condition ]
# do
#  command(s)...
# done
# # The until construct tests for a condition, and if false, executes commands. It keeps looping as long as the condition is false.
# ```
# 
# - break and continue can be used to control the loop execution of for, while and until constructs.
#     - continue is used to skip the rest of a particular loop iteration,
#     - whereas break is used to skip the entire rest of loop.


