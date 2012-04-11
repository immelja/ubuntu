#!/bin/bash

#############
# Execution #
#############

# Initialization
$INSTALL_COMMAND update
$INSTALL_COMMAND upgrade

# Compiler Tools
$INSTALL_COMMAND install build-essential # Essential for compiling source (includes GCC compiler, etc).
$INSTALL_COMMAND install libreadline6 libreadline6-dev # CLI.
$INSTALL_COMMAND install zlib1g zlib1g-dev # Compression.
$INSTALL_COMMAND install libssl-dev # SSL.
$INSTALL_COMMAND install libyaml-dev # YAML.
$INSTALL_COMMAND install libxml2-dev # XML.
$INSTALL_COMMAND install libxslt-dev # XSLT.

# Package Management
$INSTALL_COMMAND install python-software-properties # Provides the "add-apt-repository" command.

# Image Processing
$INSTALL_COMMAND install imagemagick
$INSTALL_COMMAND install librmagick-ruby
