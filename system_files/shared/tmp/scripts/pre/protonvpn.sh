#!/usr/bin/env bash

set -oue pipefail

# Setup Proton VPN repo
mkdir -p /etc/yum.repos.d

echo '[protonvpn-fedora-stable]
name = ProtonVPN Fedora Stable repository
baseurl = https://repo.protonvpn.com/fedora-$releasever-stable
enabled = 1
gpgcheck = 0
repo_gpgcheck=0
gpgkey = https://repo.protonvpn.com/fedora-$releasever-stable/public_key.asc' | sudo tee /etc/yum.repos.d/protonvpn.repo
