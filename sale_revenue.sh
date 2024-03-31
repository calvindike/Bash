#!/bin/bash
# This script calculates sales and revenue
# From quantity and price
# Collect the values dynamically

echo "Please enter your name: "
read name
echo "Please enter the quantity sold: "
read qty
echo "How much did you sell per item: "
read price
#echo "$1 sold $2 items for `expr $2 \* $3`"
echo "$name sold $qty items for $price dollars, which sums up to $`expr $price \* $qty`"


# Enter the price and quantity as cmdline arguments
#sh sale_revenue.sh Calvin 500 4000
#echo "$1 sold $2 items for `expr $2 \* $3` dollars."




