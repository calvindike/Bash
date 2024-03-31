#!/bin/bash

read -p "Are you 21 or over? " ANSWER
case "$ANSWER" in
[yY] | [yY][eE][sS])
echo "You sir/ma'am can have a beer🍻 😀"
;;
[nN] | [nN][oO])
echo "Sorry, we do NOT sell drinks to minors"
;;
*)
echo "Please enter y/yes or n/no"
;;
esac


