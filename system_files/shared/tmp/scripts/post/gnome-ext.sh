set -oue pipefail

EXTENSIONS='/usr/share/gnome-shell/extensions'

mkdir -p ${EXTENSIONS}

# Rounded Window Corners
wget $(curl -s https://api.github.com/repos/yilozt/rounded-window-corners/releases/latest | \
  jq -r ".assets[] | select(.name | test(\"rounded-window-corners@yilozt.shell-extension.zip\")) | .browser_download_url") \
  -P /tmp
unzip /tmp/rounded-window-corners@yilozt.shell-extension.zip -d ${EXTENSIONS}/rounded-window-corners@yilozt
rm -f /tmp/rounded-window-corners@yilozt.shell-extension.zip

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
