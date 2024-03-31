#!/bin/bash
# This script will install and start th apache webserver

#sudo yum -y update
#sudo tum rm -y httpd
sudo yum -y install tree git net-tools
sudo ps -ef | grep httpd
sudo git --version
sudo rpm -qa | grep ifconfig
echo
sudo systemctl start httpd
sudo systemctl enable httpd
sudo systemctl status httpd
#sudo useradd apache
#sudo usermod -aG apache apache
# sudo usermod -aG wheel apache


