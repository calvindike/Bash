#!/bin/bash

echo "What is yout favorite Linux distribution?"

echo "1 - Arch"
echo "2 - CentOS"
echo "3 - Debian"
echo "4 - Mint"
echo "5 - Ubuntu"
echo "6 - Something else..."

read distro;
# read -p "What is your favorite Linux distribution?"

# Case statement
# This allows us to do a particular thing depending on what a variable equals
# In this case, the script will print whatever line equals the given number the user enters when asked about their favorite distro
# Note that the end of every case statement has to end in a ;; besides the last line

case $distro in
    1) echo "Arch is a rolling release.";;
    2) echo "CentOS is popular on servers.";;
    3) echo "Debian is a community distribution.";;
    4) echo "Mint is popular on desktops and laptops.";;
    5) echo "Ubuntu is popular on both servers and computers.";;
    6) echo "There are many distributions out there.";;
    *) echo "You didn't enter an appropriate choice."
esac

