#!/bin/bash

# Setup AWS CLI - Alternative method if feature doesn't work
# This mirrors your original Gitpod setup

echo "Setting up AWS CLI..."

cd /workspaces

# Download and install AWS CLI v2
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip

# Install AWS CLI
sudo ./aws/install

# Clean up
rm -rf awscliv2.zip aws/

# Verify installation
aws --version

echo "AWS CLI setup complete!"

# Return to workspace root
cd "${CODESPACE_VSCODE_FOLDER:-/workspaces/$(basename $GITHUB_REPOSITORY)}"
