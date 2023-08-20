set -oue pipefail

INSTALL='/etc/flatpak/install'

sed -i 's/org.mozilla.firefox\n//g' ${INSTALL}
