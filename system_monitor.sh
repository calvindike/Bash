#!/bin/bash
echo "This script monitors system resources"
echo

echo "##############################################################"
echo "The system uptime is $(uptime)"
echo

echo "##############################################################"
echo "System memory utilization is: $(free -m)"
echo

echo "##############################################################"
echo "System disk utilization is: "
echo "$(df -h)"
