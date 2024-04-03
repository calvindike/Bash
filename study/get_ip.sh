#!/usr/bin/env bash
# This is used to get the private and public IP of the current server

#echo $(ifconfig | grep broadcast | awk '{print $2}')
#read private_ip
#echo $private_ip

echo
private_ip=$(ifconfig | grep broadcast | awk '{print $2}')
echo "The Private IP of this server is $private_ip"
echo

# No longer needed since we can use curl -s api.ipify.org to get public ip on both linux and Mac
#if uname == Linux
#public_ip=$(dig +short myip.opendns.com @resolver1.opendns.com)


#elif uname == Darwin
public_ip=$(curl -s api.ipify.org)
echo "The Public IP of this server is $public_ip"
echo

