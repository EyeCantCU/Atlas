#!/usr/bin/env bash

if [[ $(distrobox list | grep bazzite-arch) ]]; then
  /usr/bin/distrobox-enter -n bazzite-arch -- '  paru -Syu --noconfirm'
else
  echo "Update skipped: bazzite-arch not installed"
fi

if [[ $(distrobox list | grep dev-arch) ]]; then
  /usr/bin/distrobox-enter -n dev-arch -- '  paru -Syu --noconfirm'
else
  echo "Update skipped: dev-arch not installed"
fi
