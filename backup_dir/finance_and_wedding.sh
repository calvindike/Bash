#!/bin/bash

# This script deploys 2 webapps: 1 finance and 1 wedding webapp.

echo "Installing packages needed to deploy webapp"
sudo yum install wget unzip httpd

echo "Starting and enabling httpd service post installation"
sudo systemctl start httpd && sudo systemctl enable httpd
echo

echo "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
echo "Checking the status of httpd..................."

active_state=$(sudo systemctl show -p ActiveState --value httpd)
echo "httpd service is $active_state"

loaded_state=$(sudo systemctl show -p LoadedState --value httpd)
echo "httpd service is $loaded_state"
echo

# Create directories for the 2 webapps
echo "Creating directories for the webapps to be deployed"
sudo mkdir -p /var/www/html/finance
sudo mkdir -p /var/www/html/wedding

echo "Confirm that directories are successfully created"
finance_dir=$(ls -lh /var/www/html | grep finance)
echo "$finance_dir"

wedding_dir=$(ls -lh /var/www/html | grep wedding)
echo "$wedding_dir"
echo
echo "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"

# Create temp directories and download webapp zip files
echo "Downloading zip files for the webapps"
mkdir /tmp/finance && wget https://www.tooplate.com/zip-templates/2135_mini_finance.zip -P /tmp/finance
mkdir /tmp/wedding && wget https://www.tooplate.com/zip-templates/2131_wedding_lite.zip -P /tmp/wedding

# Unzip and deploy webapp
echo "Unzip webapp files....."
unzip /tmp/finance/2135_mini_finance.zip -d /tmp/finance
unzip /tmp/wedding/2131_wedding_lite.zip -d /tmp/wedding
echo

echo "Deploying webapps........."
sudo cp -r /tmp/finance/2135_mini_finance/* /var/www/html/finance
sudo cp -r /tmp/wedding/2131_wedding_lite/* /var/www/html/wedding
echo

# Restart httpd service
sudo systemctl restart httpd
substate=$(sudo systemctl show -p SubState --value httpd)
echo "httpd service is $substate"
echo

echo "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
# Cleanup files and directories that are no longer needed
echo
echo "Deleting files and directories no longer needed"
rm -rf /tmp/finance
rm -rf /tmp/wedding
echo

echo "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
# Confirm webapps are successfully deployed
echo "To confirm that your applications are successfully deployed please go to the following URLs"
echo "Getting public IP address of current server..."
public_ip=$(dig +short myip.opendns.com @resolver1.opendns.com)
echo
echo "To access the Finance webapp, please visit http://$public_ip/finance"
echo
echo "To access the Wedding webapp, please visit http://$public_ip/wedding"

