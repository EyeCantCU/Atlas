set -oue pipefail

INSTALL='/etc/flatpak/install'

# Remove
sed -i 's/org.mozilla.firefox\n//g' ${INSTALL}

# Install
echo ch.protonmail.protonmail-bridge >> ${INSTALL}
echo com.brave.Browser >> ${INSTALL}
echo com.github.wwmm.easyeffects >> ${INSTALL}
echo com.protonvpn.www >> ${INSTALL}
echo com.raggesilver.BlackBox >> ${INSTALL}
echo org.qbittorrent.qBittorrent >> ${INSTALL}
echo org.videolan.VLC >> ${INSTALL}
