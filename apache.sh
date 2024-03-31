#!/bin/bash

#systemctl status httpd
sudo ls /var/run/httpd/httpd.pid
if [ $? -eq 0 ]; then
  echo "Apache is already installed"
  sudo systemctl start httpd
  if [ $? -eq 0 ]; then
    echo "httpd process started successfully"
  else
    echo "httpd process startup failed. Please contact yur administrator"
  fi
else
  sudo yum install -y httpd
fi
