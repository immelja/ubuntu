#!/bin/sh

# DESCRIPTION
# Configures server defaults.

# REQUIREMENTS
# ../setup.sh

# EXECUTION
echo "Setting hostname..."
echo $SERVER_HOSTNAME > /etc/hostname
hostname -F /etc/hostname

echo "Updating hosts..."
echo "$SERVER_IP $SERVER_HOSTNAME $SERVER_HOSTNAME" >> /etc/hosts
hostname -f

echo "Setting UTC timezone..."
ln -sf /usr/share/zoneinfo/UTC /etc/localtime
