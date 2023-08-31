set -oue pipefail

EXTENSIONS='/usr/share/gnome-shell/extensions'

mkdir -p ${EXTENSIONS}

# Pano
wget $(curl -s https://api.github.com/repos/oae/gnome-shell-pano/releases/latest | \
  jq -r ".assets[] | select(.name | test(\"pano@elhan.io.zip\")) | .browser_download_url") \
  -P /tmp
unzip /tmp/pano@elhan.io.zip -d ${EXTENSIONS}/pano@elhan.io
rm -f /tmp/pano@elhan.io.zip

# Rounded Window Corners
wget $(curl -s https://api.github.com/repos/yilozt/rounded-window-corners/releases/latest | \
  jq -r ".assets[] | select(.name | test(\"rounded-window-corners@yilozt.shell-extension.zip\")) | .browser_download_url") \
  -P /tmp
unzip /tmp/rounded-window-corners@yilozt.shell-extension.zip -d ${EXTENSIONS}/rounded-window-corners@yilozt
rm -f /tmp/rounded-window-corners@yilozt.shell-extension.zip

# Hide Universal Access
git clone https://github.com/akiirui/hide-universal-access ${EXTENSIONS}/hide-universal-access@akiirui.github.io --single-branch --no-tags --depth 1
rm -rf ${EXTENSIONS}/hide-universal-access@akiirui.github.io/.git

# Grand Theft Focus
git clone https://github.com/zalckos/GrandTheftFocus /tmp/GrandTheftFocus
cd /tmp/GrandTheftFocus
git reset --hard 8b96f7f
mv grand-theft-focus@zalckos.github.com ${EXTENSIONS}
cd /
rm -rf /tmp/GrandTheftFocus
