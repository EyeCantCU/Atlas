#!/usr/bin/env bash

set -oue pipefail

# Setup Charm repo
mkdir -p /etc/yum.repos.d
echo '[charm]
name=Charm
baseurl=https://repo.charm.sh/yum/
enabled=1
gpgcheck=1
gpgkey=https://repo.charm.sh/yum/gpg.key' | sudo tee /etc/yum.repos.d/charm.repo

# Retrieve GPG key
mkdir -p /etc/pki/rpm-gpg
wget https://repo.charm.sh/yum/gpg.key -O /etc/pki/rpm-gpg/RPM-GPG-KEY-charm-pubkey.gpg
