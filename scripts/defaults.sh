#!/bin/bash

#############
# Execution #
#############

echo "Setting hostname..."
echo $SERVER_HOSTNAME > /etc/hostname
hostname -F /etc/hostname

echo "Setting the message of the day..."
echo "Welcome to the $SERVER_HOSTNAME server!" > /etc/motd.tail
echo "#!/bin/sh" > /etc/update-motd.d/00-header
rm -f /etc/update-motd.d/10-help-text

echo "Setting UTC timezone..."
ln -sf /usr/share/zoneinfo/UTC /etc/localtime
