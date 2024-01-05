#!/usr/bin/env bash

set -ouex pipefail

__charm_repo="\
[charm]
name=Charm
baseurl=https://repo.charm.sh/yum/
enabled=1
gpgcheck=1
gpgkey=https://repo.charm.sh/yum/gpg.key\
"

__protonvpn_repo="\
[protonvpn-fedora-stable]
name = ProtonVPN Fedora Stable repository
baseurl = https://repo.protonvpn.com/fedora-\$releasever-stable
enabled = 1
gpgcheck = 0
repo_gpgcheck=0
gpgkey = https://repo.protonvpn.com/fedora-\$releasever-stable/public_key.asc\
"

if [[ "$1" == "pre" ]]; then
  # copr
  wget https://copr.fedorainfracloud.org/coprs/karlisk/ventoy/repo/fedora-$FEDORA_MAJOR_VERSION/karlisk-ventoy-fedora-$FEDORA_MAJOR_VERSION.repo -O /etc/yum.repos.d/_copr_karlisk-ventoy.repo
  wget https://copr.fedorainfracloud.org/coprs/kylegospo/chatGPT-shell-cli/repo/fedora-$FEDORA_MAJOR_VERSION/kylegospo-chatGPT-shell-cli-fedora-$FEDORA_MAJOR_VERSION.repo -O /etc/yum.repos.d/_copr_kylegospo-chatGPT-shell-cli.repo

  # Eenable staging
  sed -i 's@enabled=0@enabeld=1@g' /etc/yum.repos.d/_copr_ublue-os-staging.repo

  # Charm
  echo "$__charm_repo" | tee /etc/yum.repos.d/charm.repo
  mkdir -p /etc/pki/rpm-gpg
  wget https://repo.charm.sh/yum/gpg.key -O /etc/pki/rpm-gpg/RPM-GPG-KEY-charm-pubkey.gpg

  # ProtonVPN
  echo "$__protonvpn_repo" | tee /etc/yum.repos.d/protonvpn.repo

  # Terra
  wget https://terra.fyralabs.com/terra.repo -O /etc/yum.repos.d/terra.repo
elif [[ "$1" == "post" ]]; then
  # Disable coprs
  sed -i 's@enabled=1@enabeld=0@g' /etc/yum.repos.d/_copr_ublue-os-staging.repo
  sed -i 's@enabled=1@enabeld=0@g' /etc/yum.repos.d/_copr_karlisk-ventoy.repo
  sed -i 's@enabled=1@enabeld=0@g' /etc/yum.repos.d/_copr_kylegospo-chatGPT-shell-cli.repo

  # Disable external repos
  sed -i 's@enabled=1@enabeld=0@g' /etc/yum.repos.d/charm.repo
  sed -i 's@enabled=1@enabeld=0@g' /etc/yum.repos.d/protonvpn.repo
  sed -i 's@enabled=1@enabeld=0@g' /etc/yum.repos.d/terra.repo
fi
