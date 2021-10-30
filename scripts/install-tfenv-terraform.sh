#!/bin/zsh

# Install tfenv
git clone https://github.com/tfutils/tfenv.git ~/.tfenv
echo 'export PATH="$HOME/.tfenv/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc

# Install terraform
tfenv Install

# Add plugins
sed -i 's/\(^plugins=([^)]*\)/\1 terraform/' ~/.zshrc
source ~/.zshrc
