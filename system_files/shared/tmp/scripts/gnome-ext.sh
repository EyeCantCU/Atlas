set -oue pipefail

EXTENSIONS='/usr/share/gnome-shell/extensions'

mkdir -p ${EXTENSIONS}

# Pano
wget $(curl -s https://api.github.com/repos/oae/gnome-shell-pano/releases/latest | \
  jq -r ".assets[] | select(.name | test(\"pano@elhan.io.zip\")) | .browser_download_url") \
  -P /tmp
unzip /tmp/pano@elhan.io.zip -d ${EXTENSIONS}/pano@elhan.io
rm -f /tmp/pano@elhan.io.zip

# Hide Universal Access
git clone https://github.com/akiirui/hide-universal-access /tmp/hide-universal-access
cd /tmp/hide-universal-access
mkdir -p ${EXTENSIONS}/hide-universal-access@akiirui.github.io
rm -rf .git
cp -rf * ${EXTENSIONS}/hide-universal-access@akiirui.github.io
cd /
rm -rf /tmp/hide-universal-access

# Grand Theft Focus
git clone https://github.com/zalckos/GrandTheftFocus /tmp/GrandTheftFocus
cd /tmp/GrandTheftFocus
mv grand-theft-focus@zalckos.github.com ${EXTENSIONS}
cd /
rm -rf /tmp/GrandTheftFocus

# Reboot to UEFI
git clone https://github.com/UbayGD/reboottouefi /tmp/reboottouefi
cd /tmp/reboottouefi
mkdir -p ${EXTENSIONS}/reboottouefi@ubaygd.com/po
cp -r src/{extension.js,metadata.json} ${EXTENSIONS}/reboottouefi@ubaygd.com
cp -r po/* ${EXTENSIONS}/reboottouefi@ubaygd.com/po
cd /
rm -rf /tmp/reboottouefi
