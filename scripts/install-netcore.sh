#!/bin/zsh

# Get LTS version
lts_version=$(curl https://dotnetcli.blob.core.windows.net/dotnet/Sdk/LTS/latest.version)
lts_version=${lts_version%.*}

# Get microsoft's feed
wget https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
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

# Install .NET
apt update
apt install -y dotnet-sdk-$lts_version

# Cleanup
rm packages-microsoft-prod.deb

# Add plugins
# sed -i 's/\(^plugins=([^)]*\)/\1 dotnet/' ~/.zshrc
# source ~/.zshrc
