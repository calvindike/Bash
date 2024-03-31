#!/bin/bash
# You can run this script using the at command
# '$ at hour:minute -f at.sh' eg. '$ at 15:24 -f at.sh'
# $ atq  - to check the queue for scheduled jobs
# $ atrm <job_number> - to remove the scheduled job from the queue with the queue number
# $ at 18:00 040124 -f at.sh - to schedule this job for April 1st 2024 at 6:00pm

logfile=job_results.log

echo "The script ran at the following time: $(date)" >> $logfile

