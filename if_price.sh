#!/bin/bash

read -p "Please enter your price: " PRICE
if [ $PRICE -ge 4000 ]
then
  echo "Thank you! Your price is accepted"
else
  echo "Sorry, we cannot accept your price"
fi
 

