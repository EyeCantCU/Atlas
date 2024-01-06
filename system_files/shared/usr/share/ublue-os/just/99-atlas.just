enable-incus:
  #!/usr/bin/env bash
  if [[ "$EUID" -eq 0 ]]; then
    echo "This script should not be run as root"
    exit
  fi
  echo ""
  echo "Checking for necessary entries in /etc/subuid and /etc/subgid"
  if grep -q "root:1000000:1000000000" /etc/subuid; then
    echo ""
    echo "  * subuid root range"
  else
    echo "root:1000000:1000000000" | sudo tee -a /etc/subuid
  fi
  if grep -q "root:1000000:1000000000" /etc/subgid; then
    echo ""
    echo "  * subgid root range"
  else
    echo "root:1000000:1000000000" | sudo tee -a /etc/subgid
  fi
  if grep -q "root:1000:1" /etc/subgid; then
    echo ""
    echo "  * subgid root->user"
  else
    echo "root:1000:1" | sudo tee -a /etc/subgid
  fi
  if grep -q "root:1000:1" /etc/subuid; then
    echo ""
    echo "  * subuid root->user"
  else
    echo "root:1000:1" | sudo tee -a /etc/subuid
  fi
  echo ""
  echo "Checking SELinux status"
  SELINUX_STATUS=$(getenforce)
  if [[ "$SELINUX_STATUS" = "Enforcing" ]]; then
    echo ""
    echo "SELinux must be set to Permissive or Disabled to enable Incus"
    echo "Choose your new SELinux state:"
    OPTION=$(gum choose Permissive Disabled Cancel)
    if [[ "$OPTION" = "Cancel" ]]; then
      echo "You have chosen to cancel the Incus installation process"
      exit
    else
      sudo setenforce $OPTION
      echo "You must reboot before continuing. You can run this script again."
      exit
    fi
  fi
  echo ""
  echo "Creating necessary directories for lxcfs and incus"
  sudo mkdir -p /var/lib/lxcfs
  sudo mkdir -p /var/lib/incus
  sudo mkdir -p /var/log/incus
  echo ""
  echo "Enabling incus services"
  sudo systemctl enable --now lxcfs
  sudo systemctl enable --now incus
  echo ""
  echo "Initializing Incus"
  echo ""
  echo "Choose your Incus installation type:"
  IOPTION=$(gum choose Minimal Custom Cancel)
  if [[ "$IOPTION" = "Cancel" ]]; then
    echo "You have chosen to cancel the Incus installation process"
    exit
  else
    if [ "$IOPTION" = "Minimal" ]; then
      sudo incus admin init --minimal
      echo ""
      echo "Adding the incus bridge to the trusted firewall zone"
      sudo firewall-cmd --zone=trusted --change-interface=incusbr0 --permanent
      sudo firewall-cmd --reload
    else
      sudo incus admin init
      echo ""
      echo "Add the incus bridge to the trusted firewall zone"
      echo "  sudo firewall-cmd --zone=trusted --change-interface=your-bridge --permanent"
      echo "  sudo firewall-cmd --reload"
    fi
  fi
  echo ""
  echo "Incus has been installed. You can now run 'incus' to manage your containers."

symlink-opt:
  #!/usr/bin/env bash
  PROGRAMS=$(ls /usr/lib/opt)
  LINKED_PROGRAMS=$(ls /opt)
  for program in "${PROGRAMS}";	do
    if grep -qvz "${program}" <<< "${LINKED_PROGRAMS}"; then
      sudo ln -s "/usr/lib/opt/${program}" "/opt/${program}"
    fi
  done

floorp-enable-wayland:
  sudo flatpak override --env=MOZ_ENABLE_WAYLAND=1 --socket=wayland one.ablaze.floorp

install-dev-arch:
  #!/usr/bin/env bash
  KARGS=$(rpm-ostree kargs)
  if grep 'nvidia' <<< ${KARGS}; then
    echo 'Installing Dev Arch (Nvidia)...'
    distrobox assemble create --file /usr/share/ublue-os/distrobox/dev-arch-nvidia
  else
    echo 'Installing Dev Arch...'
    distrobox assemble create --file /usr/share/ublue-os/distrobox/dev-arch
  fi

install-ham-suse:
  #!/usr/bin/env bash
  KARGS=$(rpm-ostree kargs)
  if grep 'nvidia' <<< ${KARGS}; then
    echo 'Installing Ham SUSE (Nvidia)...'
    distrobox assemble create --file /usr/share/ublue-os/distrobox/ham-suse-nvidia
  else
    echo 'Installing Ham SUSE...'
    distrobox assemble create --file /usr/share/ublue-os/distrobox/ham-suse
  fi

install-tabby:
  #!/usr/bin/env bash
  cd /tmp
  wget $(curl -s https://api.github.com/repos/Eugeny/tabby/releases/latest | \
    jq -r ".assets[] | select(.name | test(\"linux-x64.rpm\")) | .browser_download_url")
  rpm-ostree install *linux-x64.rpm
  rm -f *linux-x64.rpm

get-android-messages:
  #!/usr/bin/env bash
  wget $(curl -s https://api.github.com/repos/OrangeDrangon/android-messages-desktop/releases/latest | \
    jq -r ".assets[] | select(.name | test(\"linux-x86_64.AppImage\")) | .browser_download_url") \
    -O $HOME/Downloads/Android-Messages.AppImage
  flatpak run it.mijorus.gearlever $HOME/Downloads/Android-Messages.AppImage

get-upnote:
  echo 'Retrieving UpNote'
  wget https://upnote.sfo3.cdn.digitaloceanspaces.com/UpNote.AppImage -P ~/Desktop
  chmod +x ~/Desktop/UpNote.AppImage

get-wallpapers:
  #!/usr/bin/env bash
  wallpapers=~/Pictures/Backgrounds
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
  #!/usr/bin/env bash
  echo 'Switching to Zsh'
  # Retrieve oh-my-zsh with plugins if the user doesn't have them
  if [ ! -d ~/.oh-my-zsh ]; then
    curl -s https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | sh
    git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
    sed -i 's/plugins=(git)/plugins=(git starship zsh-autosuggestions zsh-syntax-highlighting)/g' ~/.zshrc
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
  chsh -s $(which bash)
  rm -rf ~/.oh-my-zsh
  rm -rf ~/.zshrc
