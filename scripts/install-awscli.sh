#!/bin/zsh

# Install AWS CLI
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
./aws/install

# Cleanup
rm awscliv2.zip
rm -rf aws

# Add plugins
# sed -i 's/\(^plugins=([^)]*\)/\1 aws/' ~/.zshrc
# source ~/.zshrc
