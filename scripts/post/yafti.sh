set -oue pipefail

# Toggle yafti: https://github.com/ublue-os/yafti.
FIRSTBOOT_DATA="/usr/share/ublue-os/firstboot"
FIRSTBOOT_LINK="/usr/etc/profile.d/ublue-firstboot.sh"
echo "-- firstboot: Installing and enabling \"yafti\" --"
pip install --prefix=/usr yafti
# Create symlink to our profile script, which creates the per-user "autorun yafti" links.
mkdir -p "$(dirname "${FIRSTBOOT_LINK}")"
ln -s "${FIRSTBOOT_DATA}/launcher/login-profile.sh" "${FIRSTBOOT_LINK}"
