#!/bin/zsh

# Install PowerShell Core and make it available
wget https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb
dpkg -i packages-microsoft-prod.deb
apt update
apt install -y powershell

# Cleanup
rm packages-microsoft-prod.deb
