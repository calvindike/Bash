#!/bin/bash
# You can also assign a variable using read -p "question" <variable_name> instead of having to read the variable in a new line

#echo "What is your name? "
#read name

read -p "What is your name? " name

current_user=$(whoami)
if [ $name = $current_user ]; then
  echo "Thank you for confirming this session"
else
  echo "You are not the current user in this session"
fi
