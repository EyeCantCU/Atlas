set -oue pipefail

mkdir -p /usr/share/gnome-shell/extensions

# Pano
wget $(curl -s https://api.github.com/repos/oae/gnome-shell-pano/releases/latest | \
  jq -r ".assets[] | select(.name | test(\"pano@elhan.io.zip\")) | .browser_download_url") \
  -P /tmp
unzip /tmp/pano@elhan.io.zip -d /usr/share/gnome-shell/extensions/pano@elhan.io
rm -f /tmp/pano@elhan.io.zip

# Rounded Window Corners
wget $(curl -s https://api.github.com/repos/yilozt/rounded-window-corners/releases/latest | \
  jq -r ".assets[] | select(.name | test(\"rounded-window-corners@yilozt.shell-extension.zip\")) | .browser_download_url") \
  -P /tmp
unzip /tmp/rounded-window-corners@yilozt.shell-extension.zip -d /usr/share/gnome-shell/extensions/rounded-window-corners@yilozt
rm -f /tmp/rounded-window-corners@yilozt.shell-extension.zip
