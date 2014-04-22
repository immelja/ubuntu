#!/bin/bash

# DESCRIPTION
# Defines global settings.

# SETTINGS
# General
set -o nounset
set -o errexit
set -o pipefail

# Globals
export SERVER_IP=127.0.1.1 # Placeholder for server IP.
export SERVER_HOSTNAME=home.example.com # Placeholder for server domain.
export USER_LOGIN=app # The master user for automated tasks, deployments, app management, etc.
export USER_PASS=password # The master user password.
export INSTALL_COMMAND="apt-get -q -y"
