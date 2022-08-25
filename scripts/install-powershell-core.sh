#!/bin/zsh

# Install PowerShell Core and make it available
wget https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb
dpkg -i packages-microsoft-prod.deb

# Prefer microsoft's feed
if [ ! -f /etc/apt/preferences ]
then
touch /etc/apt/preferences
tee -a /etc/apt/preferences > /dev/null <<EOT
Package: *
Pin: origin "packages.microsoft.com"
Pin-Priority: 1001
EOT
fi

# Install PowerShell
apt update
apt install -y powershell

# Cleanup
rm packages-microsoft-prod.deb
