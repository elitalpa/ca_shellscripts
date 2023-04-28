#!/bin/bash 

COST_PINEAPPLE=50

COST_BANANA=4

COST_WATERMELON=23

COST_BASKET=1

TOTAL=$(( ${COST_BASKET} + (1 * ${COST_PINEAPPLE}) + (2 * ${COST_BANANA}) + (3 * ${COST_WATERMELON}) ))

echo "Total Cost is $TOTAL"

# # Notes:
# - Simple arithmetics on variables can be done using the arithmetic expression: $((expression))
# - The basic operators are:
#   - a + b addition (a plus b)
#   - a - b substraction (a minus b)
#   - a * b multiplication (a times b)
#   - a / b division (integer) (a divided by b)
#   - a % b modulo (the integer remainder of a divided by b)
#   - a ** b exponentiation (a to the power of b)
