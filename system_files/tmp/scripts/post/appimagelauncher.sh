set -oue pipefail

cd /tmp
wget -q https://github.com/TheAssassin/AppImageLauncher/releases/download/v2.2.0/appimagelauncher-2.2.0-travis995.0f91801.x86_64.rpm
rpm-ostree install appimagelauncher-2.2.0-travis995.0f91801.x86_64.rpm
