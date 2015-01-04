#!/bin/bash

# DESCRIPTION
# Defines command line prompt options.

# Process option selection.
# Parameters:
# $1 = The option to process.
process_option() {
  case $1 in
    'd')
      scripts/defaults.sh
      break;;
    'p')
      scripts/packages.sh
      break;;
    'u')
      scripts/users.sh
      break;;
    'f')
      scripts/finale.sh
      break;;
    'r')
      shutdown -r now
      break;;
    'i')
      scripts/defaults.sh
      scripts/packages.sh
      scripts/users.sh
      scripts/finale.sh
      shutdown -r now
      break;;
    'q')
      break;;
  esac
}
export -f process_option
