#!/bin/bash
echo "Single line comment starts here"

# This command patches the server and shows the progress, but also puts it in the updatefile because of the tee command used
sudo yum -y update | tee updatefile
date

echo "Results of last yum command:"
tail -n 10 updatefile

# This writes content of the package installation to git_install.txt. 
# Make sure to use >> if you do NOT want to overwrite the contents of the existing file
sudo yum -y install git > pkg_install.txt
echo "Git installation in progress ....."



echo "Single line comment ends here"

echo "##################################################"

echo "Multi-line comment starts here"
<<calvin

This is a comment
Testing second line in multi-line comment
Line 3
4
5
calvin

echo "Multi-line comment ends here."

