set -oue pipefail

systemctl disable flatpak-system-update.timer
systemctl --global disable flatpak-user-update.timer
rpm-ostree install /tmp/ublue-updater.noarch.rpm
systenctl enable ublue-updater.timer
sed -i 's/AutomaticUpdatePolicy=staged/AutomaticUpdatePolicy=none/g' /etc/rpm-ostreed.conf
