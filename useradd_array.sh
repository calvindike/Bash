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

# Create App group
sudo groupadd App
echo "App group added"

# Add user to group
echo "Please enter the groups you want to add this user to: "
read $user_group
sudo usermod -aG $user_group $username
echo "User $username has been added to $user_group"

sudo tail -2 /etc/passwd
sudo tail -2 /etc/shadow
id $username
sudo grep $username /etc/passwd


# modify script by adding a group entry {App}
# Add user to App group and sudoers group(wheel group.


#sudo groupadd DevOps
#sudo useradd chidi
#sudo usermod -aG DevOps chidi
#id chidi



