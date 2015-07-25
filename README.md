# Ubuntu

[![Gittip](http://img.shields.io/gittip/bkuhlmann.svg)](https://www.gittip.com/bkuhlmann)

This project contains a set of shell scripts for installing and configuring a fresh Ubuntu operating system.
It is assumed that the base Ubuntu install is a _server_ install and not a _client_ install.

This project can serve as a prelude to the [Rails Setup Project](https://github.com/bkuhlmann/rails_setup_template)
should you wish to have a bootstrapped Rails app running on a fresh Ubuntu install with a full server stack.

# Features

- A configurable shell script for applying default settings and installing necessary software packages.

# Requirements

0. [Ubuntu](http://www.ubuntu.com)

# Setup

Open a terminal window and execute one of the following setup sequences depending on your version preference:

Current Version (stable):

    git clone git://github.com/bkuhlmann/ubuntu.git
    cd ubuntu
    git checkout v0.3.1

Master Version (unstable):

    git clone git://github.com/bkuhlmann/ubuntu.git
    cd ubuntu

Edit the setup.sh file and adjust the settings as you see fit, namely the following variables:

- SERVER_IP
- SERVER_HOSTNAME
- USER_LOGIN
- USER_PASS

You may want to tweak the *.sh files in the scripts folder as well.

# Usage

0. ssh to your server or VM.
0. Switch to the root user.
0. Create the a /root/.ssh/authorized_keys file with your public key.
0. chmod -R 600 /root/.ssh.
0. mkdir /root/ubuntu.
0. scp the files of this project to the /root/ubuntu folder. Example: scp -r - root@10.0.1.50:/root/ubuntu.
0. Run the /root/ubuntu/setup.sh script in the root of this project.
0. Delete the /root/ubuntu folder.
0. Delete the /root/.ssh folder.

# Versioning

Read [Semantic Versioning](http://semver.org) for details. Briefly, it means:

- Patch (x.y.Z) - Incremented for small, backwards compatible bug fixes.
- Minor (x.Y.z) - Incremented for new, backwards compatible public API enhancements and/or bug fixes.
- Major (X.y.z) - Incremented for any backwards incompatible public API changes.

# Code of Conduct

Please note that this project is released with a [CODE OF CONDUCT](CODE_OF_CONDUCT.md). By participating in this project
you agree to abide by its terms.

# Contributions

Read [CONTRIBUTING](CONTRIBUTING.md) for details.

# License

Copyright (c) 2012 [Alchemists](https://www.alchemists.io).
Read the [LICENSE](LICENSE.md) for details.

# History

Read the [CHANGELOG](CHANGELOG.md) for details.
Built with [Gemsmith](https://github.com/bkuhlmann/gemsmith).

# Credits

Developed by [Brooke Kuhlmann](https://www.alchemists.io) at [Alchemists](https://www.alchemists.io)
