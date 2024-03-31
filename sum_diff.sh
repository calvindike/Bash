#!/bin/bash

echo "Welcome to simple arithmetic operations"
echo "Please enter the first number: "
read num1
echo "Please enter the second number: "
read num2
echo "The sum is = "
expr $num1 + $num2
echo "The difference is = "
expr $num1 - $num2

