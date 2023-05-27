setup-flatpaks:
  #!/usr/bin/env bash
  echo 'Installing flatpaks from the ublue recipe ...'
  flatpaks=$(yq -- '.firstboot.flatpaks[]' "/usr/share/ublue-os/recipe.yml")
  for pkg in $flatpaks; do \
      echo "Installing: ${pkg}" && \
      flatpak install --user --noninteractive flathub $pkg; \
  done

setup-gaming:
  echo 'Setting up gaming experience ... lock and load.'
  flatpak install -y --user \\
  org.freedesktop.Platform.VulkanLayer.MangoHud//22.08 \\
  org.freedesktop.Platform.VulkanLayer.vkBasalt//22.08 \\
  com.heroicgameslauncher.hgl \\
  com.usebottles.bottles \\
  com.valvesoftware.Steam \\
  com.valvesoftware.Steam.Utility.gamescope \\
  net.davidotek.pupgui2
  flatpak override com.usebottles.bottles --user --filesystem=xdg-data/applications 
  flatpak override --user --env=MANGOHUD=1 com.valvesoftware.Steam 
  flatpak override --user --env=MANGOHUD=1 com.heroicgameslauncher.hgl 
  wget https://www.emudeck.com/EmuDeck.desktop -P ~/Desktop
  chmod +x ~/Desktop/EmuDeck.desktop

setup-streaming:
  echo 'Installing streaming applications'
  flatpak install -y --user \\
  org.freedesktop.Platform.VulkanLayer.OBSVkCapture//22.08 \\
  com.obsproject.Studio \\
  com.obsproject.Studio.Plugin.OBSVkCapture \\
  com.obsproject.Studio.Plugin.Gstreamer

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
  just setup-gaming
  just setup-streaming
  just setup-ham-radio
  just setup-upnote
