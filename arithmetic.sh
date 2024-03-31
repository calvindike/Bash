#!/bin/bash
# Run this script with 2 integers as arguments
# sh arithmetic.sh 50 10                     -Script can be renamed to sao.sh which means simple arithmetic operations.sh
# sh arithmetic2.sh arg1 arg2
echo "The sum of $1 + $2 = `expr $1 + $2`"
expr $1 + $2

echo "The product of $1 * $2 is `expr $1 \* $2`"
echo "The difference of $1 - $2 is `expr $1 - $2`"

