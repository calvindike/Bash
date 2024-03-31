#!/bin/bash

if [ -e /etc/passwd ]; then
  echo "The file exists. Please proceed "
  grep calvin /etc/passwd
  touch software.sh /home/calvin
else
  echo "THis file does NOT exist."
fi

