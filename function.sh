#!/bin/bash

usermgmt(){
  echo "Enter the username of the new user"
  read name
  sudo adduser $name
}

filemgmt(){
  if [ -e /etc/passwd ]; then
    echo " File exists. Please proceed "
    grep calvin /etc/passwd
    touch software.sh /home/calvin
  fi
}

packagemgmt(){
  sudo yum update -y
  sudo yum install git maven -y
}

db_backup(){
  sudo cp -R /home/calvin/automation/* /tmp/calvin_backup
}

monitoring(){
  df -h
  free -m
#  top
}

# Call usermgmt function
usermgmt
filemgmt
