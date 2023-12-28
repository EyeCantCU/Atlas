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

install-brave:
  #!/usr/bin/env bash
  IMAGE_INFO="/usr/share/ublue-os/image-info.json"
  IMAGE_FLAVOR=$(jq -r '."image-flavor"' < $IMAGE_INFO)
  if [[ "${IMAGE_FLAVOR}" =~ "nvidia" ]]; then
    distrobox create -i quay.io/toolbx-images/ubuntu-toolbox:latest -n bravebox --nvidia --yes
  else
    distrobox create -i quay.io/toolbx-images/ubuntu-toolbox:latest -n bravebox --yes
  fi
  distrobox-enter -n bravebox -- 'bash -c "echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | sudo debconf-set-selections && sudo locale-gen && sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg && echo \"deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main\" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list && sudo apt update -y && sudo apt install brave-browser dmz-cursor-theme pipewire wireplumber libspa-0.2-bluetooth ttf-mscorefonts-installer fonts-recommended -y && sudo update-alternatives --set x-cursor-theme /usr/share/icons/DMZ-Black/cursor.theme && distrobox-export --app brave-browser --extra-flags \"--ozone-platform=wayland --disable-features=WaylandFractionalScaleV1\""'
  sed -i 's/ \/bin\/sh -l -c //' ~/.local/share/applications/bravebox-brave-browser.desktop
  mv ~/.local/share/applications/bravebox-brave-browser.desktop ~/.local/share/applications/brave-browser.desktop
  xdg-settings set default-web-browser brave-browser.desktop

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

get-devpod:
  echo 'Retrieving DevPod'
  wget -q https://github.com/loft-sh/devpod/releases/latest/download/DevPod_linux_amd64.AppImage -O ~/Desktop/DevPod.AppImage
  chmod +x ~/Desktop/DevPod.AppImage

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
    sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting)/g' ~/.zshrc
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
