set -oue pipefail

INSTALL='/usr/share/ublue-os/bazzite/flatpak/install'
REMOVE='/usr/share/ublue-os/bazzite/flatpak/remove'

# Install
echo ch.protonmail.protonmail-bridge >> ${INSTALL}
echo com.bitwarden.desktop >> ${INSTALL}
echo com.calibre_ebook.calibre >> ${INSTALL}
echo com.discordapp.Discord >> ${INSTALL}
echo com.github.debauchee.barrier >> ${INSTALL}
echo com.github.iwalton3.jellyfin-media-player >> ${INSTALL}
echo com.github.wwmm.easyeffects >> ${INSTALL}
echo com.github.zocker_160.SyncThingy >> ${INSTALL}
echo com.mastermindzh.tidal-hifi >> ${INSTALL}
echo com.usebottles.bottles >> ${INSTALL}
echo io.freetubeapp.FreeTube >> ${INSTALL}
echo org.signal.Signal >> ${INSTALL}
echo org.videolan.VLC >> ${INSTALL}

if [[ "${BASE_IMAGE_NAME}" = "silverblue" ]]; then
  echo com.raggesilver.BlackBox >> ${INSTALL}
  echo org.qbittorrent.qBittorrent >> ${INSTALL}
fi

# Remove
if [[ "${BASE_IMAGE_NAME}" = "kinoite" ]]; then
  echo com.github.GradienceTeam.Gradience >> ${REMOVE}
  echo com.mattjakeman.ExtensionManager >> ${REMOVE}
  echo io.missioncenter.MissionCenter >> ${REMOVE}
  echo com.vysp3r.ProtonPlus >> ${REMOVE}
  echo org.gnome.Calculator >> ${REMOVE}
  echo org.gnome.Calendar >> ${REMOVE}
  echo org.gnome.Characters >> ${REMOVE}
  echo org.gnome.Contacts >> ${REMOVE}
  echo org.gnome.Evince >> ${REMOVE}
  echo org.gnome.Logs >> ${REMOVE}
  echo org.gnome.Loupe >> ${REMOVE}
  echo org.gnome.Maps >> ${REMOVE}
  echo org.gnome.NautilusPreviewer >> ${REMOVE}
  echo org.gnome.TextEditor >> ${REMOVE}
  echo org.gnome.Weather >> ${REMOVE}
  echo org.gnome.baobab >> ${REMOVE}
  echo org.gnome.Totem >> ${REMOVE}
  echo org.gnome.clocks >> ${REMOVE}
  echo org.gnome.font-viewer >> ${REMOVE}
  echo org.gtk.Gtk3theme.adw-gtk3 >> ${REMOVE}
  echo org.gtk.Gtk3theme.adw-gtk3-dark >> ${REMOVE}
elif [[ "${BASE_IMAGE_NAME}" = "silverblue" ]]; then
  echo net.davidotek.pupgui2 >> ${REMOVE}
fi
