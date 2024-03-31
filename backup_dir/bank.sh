#!/bin/bash
<<atm
This script will authenticate bank users
You must have the right credentials to use this script.
atm

echo "Good Morning"
echo "Please enter your name: "
read name
echo "$name, Welcome to Bank of America"
echo "Please insert your card..."
sleep 5
echo "Please enter your pin..."
read pin
echo "You are authenticated."
echo "Thanks for banking with Bank of America"

