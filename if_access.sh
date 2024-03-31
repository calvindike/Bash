#!/bin/bash

echo "Good evening, Please enter your pin: "
echo
read -s pin
if (( $pin == 1920 ))
then
  echo "You have entered the corrrect pin"
  echo "Welcome to Access Bank, Nigeria."
else
  echo "Sorry, you have entered the wrong pin"
  echo "Entering multiple wrong pins can lock your account for your protection."
fi
