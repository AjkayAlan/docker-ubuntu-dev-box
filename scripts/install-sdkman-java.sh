#!/bin/zsh

# Install sdkman
curl -s "https://get.sdkman.io" | zsh
source "$HOME/.sdkman/bin/sdkman-init.sh"

# Install java
sdk install java

# Install gradle
sdk install gradle

# Install maven
sdk install maven

# Add plugins
sed -i 's/\(^plugins=([^)]*\)/\1 sdk gradle mvn/' ~/.zshrc
source ~/.zshrc
