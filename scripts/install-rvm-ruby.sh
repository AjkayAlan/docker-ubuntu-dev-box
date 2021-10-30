#!/bin/zsh

# Install rvm, ruby, and rails
command curl -sSL https://rvm.io/mpapis.asc | gpg --import -
command curl -sSL https://rvm.io/pkuczynski.asc | gpg --import -
\curl -sSL https://get.rvm.io | bash -s stable --rails --ignore-dotfiles
echo "source /usr/local/rvm/scripts/rvm" >> ~/.zshrc
source ~/.zshrc

# Add plugins
sed -i 's/\(^plugins=([^)]*\)/\1 rvm ruby rails/' ~/.zshrc
source ~/.zshrc
