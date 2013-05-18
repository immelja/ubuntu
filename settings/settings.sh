#!/bin/sh

# DESCRIPTION
# Defines global settings.

# SETTINGS
# General
set -u # Exit if any variables are uninitialised.
set -e # Exit if any command returns non-zero.

# Globals
export SERVER_IP=127.0.1.1 # Placeholder for server IP.
export SERVER_HOSTNAME=home.example.com # Placeholder for server domain.
export USER_LOGIN=app # The master user for automated tasks, deployments, app management, etc.
export USER_PASS=password # The master user password.
export INSTALL_COMMAND="apt-get -q -y"
