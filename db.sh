#!/bin/bash
# This script will backup databases in all environments
# Please specify the environment as an argument
# Also specify the server and your login details as an argument

# dbserver1 dbserver2 dbserver3 dbserver4
# Martins, Calvin, CJ, Iyanu
# sh db_backup dev dbserver1 Martins
# sh script.sh arg1 arg2 arg3 arg4 .... arg20
#       $0      $1   $2   $3   $4         $20           

#mkdir backup_dir
#cp -r * backup_dir

echo "Please pass 3 arguments with your script. "
cp -R * /tmp

echo "The first argument is $1"
echo "The second argument is $2"
echo "The third argument is $3"
echo "The fourth argument is $4"
echo "The fifth argument is ${10}"
echo "The number of argument is $#"
echo "The list of arguments are $@"
echo "The list of arguments are $*"
uptime
date
echo "The status of your last ran command is $?"
mkdir -p /tmp/Automation_Backup
cp -R * /tmp/Automation_Backup
echo "The process id is $$" 


