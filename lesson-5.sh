#!/bin/bash

# This script sets the system's hardware time to the system's time

# Get the current system time
SYSTEM_TIME=$(date +%T)

# Set the hardware time to the system time
/sbin/hwclock --set --date "$SYSTEM_TIME"

# Set a cron job to run this script every day, week, and month at 6:40 am
(crontab -l ; echo "40 6 * * * * /path/to/script.sh") | crontab -