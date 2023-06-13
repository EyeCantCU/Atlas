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
  distrobox-enter -n ham-suse -- '  exit'
  echo 'Retrieving EmuDeck'
  wget https://www.emudeck.com/EmuDeck.desktop -P ~/Desktop
  chmod +x ~/Desktop/EmuDeck.desktop

setup-ham-radio:
  echo 'Installing ham-suse distrobox image'
  distrobox create -i ghcr.io/eyecantcu/ham-suse -n ham-suse --nvidia
  distrobox-enter -n ham-suse -- '  exit'
  echo '73 - KK0RX'

setup-dev:
  echo 'Installing dev-arch distrobox image'
  distrobox create -i ghcr.io/eyecantcu/dev-arch -n dev-arch --nvidia
  distrobox-enter -n dev-arch -- '  exit'

setup-dev-jb:
  echo 'Installing JetBrains IDEs'
  echo 'Installing Android Studio'
  distrobox-enter -n dev-arch -- '  paru -S aur/android-studio --noconfirm'
  distrobox-enter -n dev-arch -- '  distrobox-export --app android-studio'
  echo 'Installing CLion'
  distrobox-enter -n dev-arch -- '  paru -S aur/clion --noconfirm'
  distrobox-enter -n dev-arch -- '  distrobox-export --app clion'
  echo 'Installing IntelliJ IDEA Ultimate Edition and JRE'
  distrobox-enter -n dev-arch -- '  paru -S aur/intellij-idea-ultimate-edition --noconfirm'
  distrobox-enter -n dev-arch -- '  paru -S aur/intellij-idea-ultimate-edition-jre --noconfirm'
  distrobox-enter -n dev-arch -- '  distrobox-export --app intellij-idea-ultimate-edition'
  echo 'Installing PyCharm Professional'
  distrobox-enter -n dev-arch -- '  paru -S aur/pycharm-professional --noconfirm'
  distrobox-enter -n dev-arch -- '  distrobox-export --app pycharm-professional'
  echo 'Purging cache'
  distrobox-enter -n dev-arch -- '  yes | paru -Sccd'

setup-upnote:
  echo 'Retrieving UpNote'
  wget https://upnote.sfo3.cdn.digitaloceanspaces.com/UpNote.AppImage -P ~/Desktop
  chmod +x ~/Desktop/UpNote.AppImage

enable-zsh:
  echo 'Switching to Zsh'
  systemctl enable --now configure-zsh.service

disable-zsh:
  echo 'Disabling Zsh'
  touch ~/.disablezsh
  chsh -s $(which bash)
  systemctl disable --now configure-zsh.service
  rm -rf ~/.oh-my-zsh
  rm -rf ~/.zshrc

nix-me-up:
  echo 'Setting phasers to kill. Installing nix.'
  /usr/bin/ublue-nix-install

do-it:
  just setup-flatpaks
  just setup-gaming
  just setup-ham-radio
  just setup-upnote
