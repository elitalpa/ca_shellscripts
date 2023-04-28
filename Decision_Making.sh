#!/bin/bash
# change these variables
NUMBER=16
APPLES=16
KING="LUIS"
# modify above variables
# to make all decisions below TRUE
if [ $NUMBER -gt 15 ] ; then
  echo 1
fi
if [ $NUMBER -eq $APPLES ] ; then
  echo 2
fi
if [[ ($APPLES -eq 12) || ("$KING" = "LUIS") ]] ; then
  echo 3
fi
if [[ $(($NUMBER + $APPLES)) -le 32 ]] ; then
  echo 4
fi

# # Notes:
# - As in popular programming languages, the shell also supports logical decision making.
# - The basic conditional decision making construct is: if [ expression ]; then
# - It can be expanded with 'elif' and 'else'
# - The expression can be a single string or variable.
# - A empty string or a string consisting of spaces or an undefined variable name, are evaluated as false.
# - The expression can be a logical combination of comparisons: 
#   - negation is denoted by !, 
#   - logical AND (conjunction) is denoted by &&, 
#   - and logical OR (disjunction) is denoted by ||.
# - Conditional expressions should be surrounded by double brackets [[ ]].
#
# - Types of numeric comparisons
# ```shell
# comparison    Evaluated to true when
# $a -lt $b    $a < $b
# $a -gt $b    $a > $b
# $a -le $b    $a <= $b
# $a -ge $b    $a >= $b
# $a -eq $b    $a is equal to $b
# $a -ne $b    $a is not equal to $b
# ```
# - Types of string comparisons
# ```shell
# comparison    Evaluated to true when
# "$a" = "$b"     $a is the same as $b
# "$a" == "$b"    $a is the same as $b
# "$a" != "$b"    $a is different from $b
# -z "$a"         $a is empty
# ```
#
# - case structure
# ```shell
# case "$variable" in
#     "$condition1" )
#         command...
#     ;;
#     "$condition2" )
#         command...
#     ;;
# esac
# ```
# - simple case bash structure
# ```shell
# mycase=1
# case $mycase in
#     1) echo "You selected bash";;
#     2) echo "You selected perl";;
#     3) echo "You selected phyton";;
#     4) echo "You selected c++";;
#     5) exit
# esac
# ```
