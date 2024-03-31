#!/bin/bash
# This script will dynamically create a user.

# Create user
echo "Please enter the name of the user you want to create on this server: "
read username
echo "Creating account for $username"
sudo useradd $username
echo

# Assign password
echo "Assign Password to user $username "
sudo passwd $username
echo

# Create App group
echo "Enter the name of the group you want to create:" 
sudo groupadd App
echo "App group added"
echo


# Add user to group
echo "Please enter the groups you want to add this user to: "
sudo usermod -aG wheel $username
echo "User $username has been added to sudoers group and App group"
echo

sudo tail -1 /etc/passwd
echo
sudo tail -1 /etc/shadow
echo

id $username
echo

sudo grep $username /etc/passwd




#---------------------------------------------------------------------
# modify script by adding a group entry {App}
# Add user to App group and sudoers group(wheel group.


#sudo groupadd DevOps
#sudo useradd chidi
#sudo usermod -aG DevOps chidi
#id chidi


