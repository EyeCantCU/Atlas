set -oue pipefail

INSTALL='/etc/flatpak/install'

# Remove
sed -i 's/org.mozilla.firefox\n//g' ${INSTALL}

# Install
echo com.brave.Browser >> ${INSTALL}
echo com.raggesilver.BlackBox >> ${INSTALL}
echo org.qbittorrent.qBittorrent >> ${INSTALL}
echo org.videolan.VLC >> ${INSTALL}
