#!/bin/bash

BUFFETT="Life is like a snowball. The important thing is finding wet snow and a really long hill."
# write your code here
ISAY=$BUFFETT

Change1=${ISAY[@]/snow/foot}        # Change1: replace the first occurrence of 'snow' with 'foot'. 
ISAY=$Change1

Change2=${ISAY[@]//snow/}           # Change2: delete the second occurrence of 'snow'.
ISAY=$Change2

Change3=${ISAY[@]/finding/getting}  # Change3: replace 'finding' with 'getting'.
ISAY=$Change3

word_wet_index=$(( `expr index "$Change3" 'w'` + 2 ))   # Change4: delete all characters following 'wet'
Change4=${ISAY::$word_wet_index}                        # Tip: One way to implement Change4, is to find the index of 'w' in the word 'wet' and then use substring extraction.
ISAY=$Change4

# Test code - do not modify
echo "Warren Buffett said:"
echo $BUFFETT
echo "and I say:"
echo "$ISAY"

# # Notes:
# - String Length
# ```shell
# STRING="this is a string"
# echo ${#STRING}            # 16
# ```
# 
# - Index
# ```shell
# # Find the numerical position in $STRING of any single character in $SUBSTRING that matches. Note that the 'expr' command is used in this case.
# STRING="this is a string"
# SUBSTRING="hat"
# expr index "$STRING" "$SUBSTRING"     # 1 is the position of the first 't' in $STRING
# ```
# 
# - Substring Extraction
# ```shell
# # Extract substring of length $LEN from $STRING starting after position $POS. Note that first position is 0.
# STRING="this is a string"
# POS=1
# LEN=3
# echo ${STRING:$POS:$LEN}   # his
# ```
# ```shell
# # If :$LEN is omitted, extract substring from $POS to end of line
# STRING="this is a string"
# echo ${STRING:1}           # $STRING contents without leading character
# echo ${STRING:12}          # ring
# ```
# 
# - Substring Replacement
# ```shell
# # Replace first occurrence of substring with replacement
# STRING="to be or not to be"
# echo ${STRING[@]/be/eat}        # to eat or not to be
# ```
# ```shell
# # Replace all occurrences of substring
# STRING="to be or not to be"
# echo ${STRING[@]//be/eat}        # to eat or not to eat
# ```
# ```shell
# # Delete all occurrences of substring (replace with empty string)
# STRING="to be or not to be"
# echo ${STRING[@]// not/}        # to be or to be
# ```
# ```shell
# # Replace occurrence of substring if at the beginning of $STRING
# STRING="to be or not to be"
# echo ${STRING[@]/#to be/eat now}    # eat now or not to be
# ```
# ```shell
# # Replace occurrence of substring if at the end of $STRING
# STRING="to be or not to be"
# echo ${STRING[@]/%be/eat}        # to be or not to eat
# ```
# ```shell
# # replace occurrence of substring with shell command output
# STRING="to be or not to be"
# echo ${STRING[@]/%be/be on $(date +%Y-%m-%d)}    # to be or not to be on 2012-06-14
# ```

