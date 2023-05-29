setup-flatpaks:
  #!/usr/bin/env bash
  echo 'Installing flatpaks from the ublue recipe ...'
  flatpaks=$(yq -- '.firstboot.flatpaks[]' "/usr/share/ublue-os/recipe.yml")
  for pkg in $flatpaks; do \
      echo "Installing: ${pkg}" && \
      flatpak install --user --noninteractive flathub $pkg; \
  done

setup-ham-radio:
  echo 'Installing ham programs'
  flatpak install -y --user \\
  edu.princeton.physics.WSJTX \\
  com.w1hkj.fldigi \\
  com.w1hkj.flrig
  echo '73 - KK0RX'

setup-upnote:
  echo 'Retrieving UpNote'
  wget https://upnote.sfo3.cdn.digitaloceanspaces.com/UpNote.AppImage -P ~/Desktop
  chmod +x ~/Desktop/UpNote.AppImage

nix-me-up:
  echo 'Setting phasers to kill. Installing nix.'
  /usr/bin/ublue-nix-install

do-it:
  just setup-flatpaks
  just setup-ham-radio
  just setup-upnote
