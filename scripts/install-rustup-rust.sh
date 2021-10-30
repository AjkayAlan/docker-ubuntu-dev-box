#!/bin/zsh

# Install rustup and rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source ~/.zshrc

# Add plugins
sed -i 's/\(^plugins=([^)]*\)/\1 rustup rust cargo/' ~/.zshrc
source ~/.zshrc
