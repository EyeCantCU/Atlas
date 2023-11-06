set -oue pipefail

cd /tmp
wget -q https://raw.githubusercontent.com/89luca89/distrobox/main/install -O distrobox-install.sh
sed -zi 's/cd\n/cd \/\n/g' distrobox-install.sh
chmod +x distrobox-install.sh
./distrobox-install.sh --next --prefix /usr
rm -f distrobox-install.sh
cd /
