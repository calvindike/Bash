#!/bin/bash
# This script will authenticate bank user

echo "Good aftenoon"
echo "please enter your name: "
read name
echo "$name, Welcome to TD Bank"
echo "Please enter your card"
sleep 2
echo "Please enter your pin: "
read -s pin  #The -s is for passing a secret variable
echo "You are authenticated"
echo "Thanks for banking with TD Bank"



