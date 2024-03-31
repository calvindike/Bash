#!/bin/bash

read -p "Please enter your name: " NAME
if [ "$NAME" = "Calvin" ]; then
  echo "Hi Calvin!"
elif [ "$NAME" = "Peter" ]; then
  echo "Welcome Peter"
else
  echo "You are neither Calvin nor Peter. Thanks for your time."
fi
