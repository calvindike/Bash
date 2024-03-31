#!/bin/bash
# Installing Dependencies

echo "Installing Packages ......"
sudo yum install wget unzip httpd -y
echo "Packages successfully installed"
echo "##############################################"

# Start and Enable Service
echo "Start and enable httpd service"
sudo systemctl start httpd && systemctl enable httpd
echo

echo "##############################################"
# Creating a temporary directory
echo "Starting Artifact Deployment"
mkdir -p /tmp/webfile

# Use this if you don't want to cd to the tmp directory in the script before downloading the file with wget
# wget https://www.tooplate.com/zip-templates/2098_health.zip --directory-prefix=/tmp/webfile
# unzip /tmp/webfile/2098_health.zip
# sudo cp -r 2098_health/* /var/www/html


cd /tmp/webfile
echo "Downloading file ................"
wget https://www.tooplate.com/zip-templates/2098_health.zip --directory-prefix=/tmp/webfile
unzip 2098_health.zip
sudo cp -r 2098_health/* /var/www/html
echo "File unziped and copied successfully"

# Bounce Service
echo "Restarting httpd service"
sudo systemctl restart httpd

# Clean Up
echo " Removing temporary directory and files .."
rm -rf /tmp/webfile
echo " Temporary directory and files successfully removed"



