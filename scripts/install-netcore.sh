#!/bin/zsh

# Get LTS version
lts_version=$(curl https://dotnetcli.blob.core.windows.net/dotnet/Sdk/LTS/latest.version)
lts_version=${lts_version%.*}

# Install .NET Core and make it available
wget https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
dpkg -i packages-microsoft-prod.deb

apt update; \
apt install -y apt-transport-https && \
apt update && \
apt install -y dotnet-sdk-$lts_version

# Cleanup
rm packages-microsoft-prod.deb

# Add plugins
# sed -i 's/\(^plugins=([^)]*\)/\1 dotnet/' ~/.zshrc
# source ~/.zshrc
