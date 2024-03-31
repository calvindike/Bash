#!/bin/bash

echo "Walmart project is ready for the market"

echo "Deployment Start"
mkdir deployment
touch deployment/app.java
chmod 744 deployment/app.java
#groupadd walmart
chown calvin:walmart deployment/app.java
mkdir app
cp deployment/app.java app
echo "Deployment Successful"
whoami
tree -f deployment
ls -lh deployment

echo " Walmart project is completed and deployed successfully"


