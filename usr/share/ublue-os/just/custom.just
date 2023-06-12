setup-flatpaks:
  #!/usr/bin/env bash
  echo 'Installing flatpaks from the ublue recipe ...'
  flatpaks=$(yq -- '.firstboot.flatpaks[]' "/usr/share/ublue-os/recipe.yml")
  for pkg in $flatpaks; do \
      echo "Installing: ${pkg}" && \
      flatpak install --user --noninteractive flathub $pkg; \
  done

setup-gaming:
  echo 'Installing bazzite-gaming distrobox image'
  distrobox create -i ghcr.io/ublue-os/bazzite-arch -n bazzite-arch --nvidia
  echo 'Retrieving EmuDeck'
  wget https://www.emudeck.com/EmuDeck.desktop -P ~/Desktop
  chmod +x ~/Desktop/EmuDeck.desktop

setup-ham-radio:
  echo 'Installing ham-suse distrobox image'
  distrobox create -i ghcr.io/eyecantcu/ham-suse -n ham-suse --nvidia
  echo '73 - KK0RX'

setup-upnote:
  echo 'Retrieving UpNote'
  wget https://upnote.sfo3.cdn.digitaloceanspaces.com/UpNote.AppImage -P ~/Desktop
  chmod +x ~/Desktop/UpNote.AppImage

setup-zsh:
  echo 'Switching to Zsh'
  systemctl enable configure-zsh.service

nix-me-up:
  echo 'Setting phasers to kill. Installing nix.'
  /usr/bin/ublue-nix-install

do-it:
  just setup-flatpaks
  just setup-gaming
  just setup-ham-radio
  just setup-upnote
