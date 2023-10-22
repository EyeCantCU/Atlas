set -oue pipefail

INSTALL='/usr/etc/flatpak/install'

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
echo com.protonvpn.www >> ${INSTALL}
echo com.usebottles.bottles >> ${INSTALL}
echo io.freetubeapp.FreeTube >> ${INSTALL}
echo org.videolan.VLC >> ${INSTALL}

if [[ "${BASE_IMAGE_NAME}" = "silverblue" ]]; then
  echo com.raggesilver.BlackBox >> ${INSTALL}
  echo org.qbittorrent.qBittorrent >> ${INSTALL}
fi
