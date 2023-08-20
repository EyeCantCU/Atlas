set -oue pipefail

INSTALL='/etc/flatpak/install'

# Remove
sed -i 's/org.mozilla.firefox\n//g' ${INSTALL}

# Install
echo com.raggesilver.BlackBox >> ${INSTALL}
