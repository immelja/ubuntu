#!/bin/bash

# DESCRIPTION
# Defines command line prompt options.

# Process option selection.
# Parameters:
# $1 = The option to process.
process_option() {
  case $1 in
    'd')
      scripts/defaults.sh;;
    'p')
      scripts/packages.sh;;
    'u')
      scripts/users.sh;;
    'f')
      scripts/finale.sh;;
    'r')
      shutdown -r now;;
    'i')
      scripts/defaults.sh
      scripts/packages.sh
      scripts/users.sh
      scripts/finale.sh
      shutdown -r now;;
    'q');;
    *)
      printf "ERROR: Invalid option.\n";;
  esac
}
export -f process_option
