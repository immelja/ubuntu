#!/bin/bash

#############
# Execution #
#############

useradd -m -s /bin/bash -G admin $USER_LOGIN
usermod -p $(echo $USER_PASS | openssl passwd -1 -stdin) $USER_LOGIN
