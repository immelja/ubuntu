#!/bin/bash

# DESCRIPTION
# Configures default user(s).

# EXECUTION
# Create user account.
useradd -m -s /bin/bash -G admin $USER_LOGIN
usermod -p $(printf $USER_PASS | openssl passwd -1 -stdin) $USER_LOGIN

# Initialize SSH authorized keys for user account.
mkdir /home/$USER_LOGIN/.ssh
touch /home/$USER_LOGIN/.ssh/authorized_keys
chmod -R 700 /home/$USER_LOGIN/.ssh
chmod 644 /home/$USER_LOGIN/.ssh/authorized_keys
