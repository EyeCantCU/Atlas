#!/usr/bin/env bash

set -ouex pipefail

# Install Starship
curl -Lo /tmp/starship.tar.gz "https://github.com/starship/starship/releases/latest/download/starship-x86_64-unknown-linux-gnu.tar.gz"
tar -xzf /tmp/starship.tar.gz -C /tmp
install -c -m 0755 /tmp/starship /usr/bin

# Init
echo 'eval "$(starship init bash)"' >> /etc/bashrc
echo 'starship init fish | source' >> /etc/fish/config.fish
