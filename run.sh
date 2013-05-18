#!/bin/sh

# DESCRIPTION
# Executes the command line interface.

# USAGE
# ./run.sh

# SETTINGS
settings/settings.sh

# EXECUTION
echo "Setup starting..."

echo "Configuring defaults..."
scripts/defaults.sh

echo "Installing system packages..."
scripts/packages.sh

echo "Configuring users..."
scripts/users.sh

echo "Finalizing setup..."
scripts/finale.sh

echo "Rebooting the server..."
shutdown -r now

echo "Setup complete!"
