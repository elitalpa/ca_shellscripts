#!/bin/bash
# Change this code
BIRTHDATE="Jan 1, 2000"
Presents=10
BIRTHDAY=$(date -d "${BIRTHDATE}" +%A)


# Testing code - do not change it

if [ "$BIRTHDATE" == "Jan 1, 2000" ] ; then
    echo "BIRTHDATE is correct, it is $BIRTHDATE"
else
    echo "BIRTHDATE is incorrect - please retry"
fi
if [ $Presents == 10 ] ; then
    echo "I have received $Presents presents"
else
    echo "Presents is incorrect - please retry"
fi
if [ "$BIRTHDAY" == "Saturday" ] ; then
    echo "I was born on a $BIRTHDAY"
else
    echo "BIRTHDAY is incorrect - please retry"
fi

# # Notes:
#
# - Shell variables are created once they are assigned a value using the "=" sign with no space permitted on either side of it.
# - The variable name is case sensitive and can consist of a combination of letters and the underscore "_".
# - A variable can contain a number, a character or a string of characters.
# - A backslash "\" is used to escape special character meaning.
# - The variable name can be encapsulated with ${} to avoid ambiguity.
# - Substitution (assigning variables with the value of a command output) can be done by encapsulating the command with `` (known as back-ticks) or with $()
