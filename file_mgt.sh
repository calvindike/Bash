#!/bin/bash
# This script creates directories for the Engineers working on multiple projects.
# Please run this as root user

mkdir /var/www/html/calvin_web
mkdir /var/www/html/martins_web
mkdir /var/www/html/yinka_web
mkdir /var/www/html/cj_web
mkdir /var/www/html/iyanu_web
mkdir /var/www/html/stanley_web

echo "<h1>Hello there, here is the list of Walmart black friday sales</h1>" > /var/www/html/calvin_web/index.html
echo "<h1>Hello there, here is the Mercedes model we are working on</h1>" > /var/www/html/martins_web/index.html
echo "<h1>Hello there, here is the Mercedes model we are working on</h1>" > /var/www/html/yinka_web/index.html
echo "<h1>Hello there, here is the Mercedes model we are working on</h1>" > /var/www/html/cj_web/index.html
echo "<h1>Hello there, here is the Mercedes model we are working on</h1>" > /var/www/html/iyanu_web/index.html
echo "<h1>Hello there, here is the Mercedes model we are working on</h1>" > /var/www/html/stanley_web/index.html



