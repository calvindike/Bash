#!/bin/bash

FILE="test.txt"
if [ -f "$FILE" ]; then
  echo "$FILE is a file"
else
  echo "$FILE is NOT a file"
fi

