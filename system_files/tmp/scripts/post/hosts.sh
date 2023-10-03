set -oue pipefail

wget -q https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts -O /usr/etc/hosts
wget -q https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts -O /etc/hosts
