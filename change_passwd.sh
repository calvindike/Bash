#!/bin/bash
# This script checks to see if the user creds match the hostnames listed in the server_list.txt file passed to the $HOSTNAME list variable
# It pings the server first to see if it can reach the server via hostname
# If SUCCESS, it will use sshpass command to try logging into the server with the provided credentials
# It will list servers that match the creds and the ones that do NOT match the creds.
# - Calvin Dike

#HOSTNAME=('10.202.1.4' 'server2' 'server3')
HOSTNAME=('localhost')
# Turn contents of file into a list and assign to HOSTNAME variable
#readarray -t HOSTNAME < server_list.txt

# Prompt for username and password to be used for credentials check
read -p "Enter username: " USER
read -s -p "Enter password: " PASSWORD
echo
read -s -p "Enter intended NEW password: " NEW_PASSWORD
echo

for i in "${HOSTNAME[@]}"; do
  ping -c 1 ${i} > /dev/null 2>&1
  if [ $? -eq 0 ]; then
    sshpass -p "${PASSWORD}" ssh -o StrictHostKeyChecking=no "${USER}"@"${i}" ls > /dev/null 2>&1
    if [ $? -eq 0 ]; then
      echo
      echo "Credentials MATCH ${i} "
      # Make sure user has sudo privileges
      sshpass -p "${PASSWORD}" ssh -o StrictHostKeyChecking=no "${USER}"@"${i}" echo ""${USER}":"${NEW_PASSWORD}"" | sudo -S chpasswd
      if [ $? -eq 0 ]; then
        echo
	echo "Password successfully changed for "${USER}" on "${HOSTNAME}" "
      else
        echo "Password NOT changed for "${USER}" on "${HOSTNAME}" "
      fi
    else
      echo "Error, creds do NOT match ${i} "
    fi
  else
    echo "${i} cannot be reached"
  fi
done

