#!/bin/zsh

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
source ~/.zshrc

# Install node
nvm install --lts
nvm use --lts

# Update npm
npm install -g npm

# Install yarn
npm install -g yarn
