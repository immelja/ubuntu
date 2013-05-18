#!/bin/sh

# DESCRIPTION
# Executes the command line interface.

# USAGE
# ./run.sh OPTION

# SETTINGS
source settings/settings.sh

# FUNCTIONS
source functions/options.sh

# EXECUTION
if [ -z "$1" ]; then
  echo ''
  while true; do
    echo "Usage: run OPTION"
    echo "\nUbuntu Options:"
    echo "  d: Configure default settings."
    echo "  p: Install system packages."
    echo "  u: Configure users."
    echo "  f: Finalize setup."
    echo "  r: Reboot server."
    echo "  i: Perform complete install (i.e. configure default settings, install packages, configure users, finalize, and reboot."
    echo "  q: Quit/Exit."
    echo ''
    read -p "Enter selection: " response
    process_option $response
  done
else
  process_option $1
fi
echo ''
