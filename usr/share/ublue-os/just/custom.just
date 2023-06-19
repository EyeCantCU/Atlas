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
  distrobox-enter -n bazzite-arch -- '  paru -S zsh --noconfirm'
  distrobox-enter -n bazzite-arch -- '  distrobox-export --app steam'
  echo 'Retrieving EmuDeck'
  wget https://www.emudeck.com/EmuDeck.desktop -P ~/Desktop
  chmod +x ~/Desktop/EmuDeck.desktop
  echo 'Retrieving Greenlight'
  wget https://github.com/unknownskl/greenlight/releases/download/v2.0.0-beta8/Greenlight-2.0.0-beta8.AppImage -O ~/Desktop/Greenlight.AppImage
  chmod +x ~/Desktop/Greenlight.AppImage

setup-ham-radio:
  echo 'Installing ham-suse distrobox image'
  distrobox create -i ghcr.io/eyecantcu/ham-suse -n ham-suse --nvidia
  distrobox-enter -n ham-suse -- '  distrbox-export --app chirp'
  echo '73 - KK0RX'

setup-dev:
  echo 'Installing dev-arch distrobox image'
  distrobox create -i ghcr.io/eyecantcu/dev-arch -n dev-arch --nvidia
  distrobox-enter -n dev-arch -- '  distrobox-export --app code'

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
  distrobox-enter -n dev-arch -- '  distrobox-export --app pycharm'
  echo 'Purging cache'
  distrobox-enter -n dev-arch -- '  yes | paru -Sccd'

setup-deezer:
  echo 'Retrieving Deezer'
  wget https://github.com/aunetx/deezer-linux/releases/download/v5.30.520-1/deezer-desktop-5.30.520-x86_64.AppImage -O ~/Desktop/Deezer.AppImage
  chmod +x ~/Desktop/Deezer.AppImage

setup-upnote:
  echo 'Retrieving UpNote'
  wget https://upnote.sfo3.cdn.digitaloceanspaces.com/UpNote.AppImage -P ~/Desktop
  chmod +x ~/Desktop/UpNote.AppImage

setup-wallpapers: 
  #!/usr/bin/env bash   
  wallpapers=~/.local/share/wallpapers
  cd /tmp
  wget https://github.com/EyeCantCU/distro-wallpapers/archive/refs/heads/main.tar.gz
  tar xvf main.tar.gz
  rm -rf main.tar.gz    
  cd distro-wallpapers-main
  mkdir -p ${wallpapers}
  cp -r  * ${wallpapers}
  cp .. 
  rm -rf distro-wallpapers-main

enable-zsh:
  #!/bin/bash
  echo 'Switching to Zsh'
  # Retrieve oh-my-zsh with plugins if the user doesn't have them
  if [ ! -d ~/.oh-my-zsh ]; then
    sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
  fi;
  # If users shell isn't found to be Zsh according to /etc/passwd, ask to change it
  if [ -z $(cat /etc/passwd | grep $USER | grep zsh) ]; then
    echo "$USER's default shell is not Zsh according to /etc/passwd." && \
    chsh -s $(which zsh) && \
    echo "You may need to sign out and back in for this to apply."
  fi;
  # Set permissions for Zsh
  chown $USER:$USER ~/.oh-my-zsh ~/.zshrc -R

disable-zsh:
  echo 'Disabling Zsh'
  touch ~/.disablezsh
  chsh -s $(which bash)
  rm -rf ~/.oh-my-zsh
  rm -rf ~/.zshrc

nix-me-up:
  echo 'Setting phasers to kill. Installing Nix.'
  curl -s https://raw.githubusercontent.com/dnkmmr69420/nix-installer-scripts/main/installer-scripts/silverblue-nix-installer.sh | bash

nix-it-off:
  echo 'Disengaging phasers. Removing Nix.'
  curl -s https://raw.githubusercontent.com/dnkmmr69420/nix-installer-scripts/main/uninstaller-scripts/silverblue-nix-uninstaller.sh | bash

hide-grub-menu:
  #!/usr/bin/env bash
  sudo sed -i 's/GRUB_TIMEOUT=5/GRUB_TIMEOUT=0/g' /etc/default/grub
  echo 'GRUB_TIMEOUT_STYLE=hidden' | sudo tee -a /etc/default/grub 1>/dev/null
  echo 'GRUB_HIDDEN_TIMEOUT=1' | sudo tee -a /etc/default/grub 1>/dev/null
  if [ -f '/boot/efi/EFI/fedora/grub.cfg' ]; then
    sudo grub2-mkconfig -o /boot/efi/EFI/fedora/grub.cfg
  else
    sudo grub2-mkconfig -o /boot/grub2/grub.cfg
  fi

unhide-grub-menu:
  #!/usr/bin/env bash
  sudo sed -i '/GRUB_HIDDEN_TIMEOUT=1/d' /etc/default/grub
  sudo sed -i '/GRUB_TIMEOUT_STYLE=hidden/d' /etc/default/grub
  sudo sed -i 's/GRUB_TIMEOUT=0/GRUB_TIMEOUT=5/g' /etc/default/grub
  if [ -f '/boot/efi/EFI/fedora/grub.cfg' ]; then
    sudo grub2-mkconfig -o /boot/efi/EFI/fedora/grub.cfg
  else
    sudo grub2-mkconfig -o /boot/grub2/grub.cfg
  fi

do-it:
  just setup-flatpaks
  just setup-gaming
  just setup-ham-radio
  just setup-upnote
