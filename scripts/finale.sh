#!/bin/sh

# DESCRIPTION
# Configures final server settings (or those which must be set last).

# REQUIREMENTS
# ../setup.sh

# EXECUTION
echo "Setting the message of the day..."
echo "Welcome to the $SERVER_HOSTNAME server." > /etc/motd.tail
echo '' > /etc/update-motd.d/00-header
echo '' > /etc/update-motd.d/10-help-text
