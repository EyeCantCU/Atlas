set -oue pipefail

mkdir -p /usr/share/gnome-shell/extensions

# Rounded Window Corners
wget $(curl -s https://api.github.com/repos/yilozt/rounded-window-corners/releases/latest | \
  jq -r ".assets[] | select(.name | test(\"rounded-window-corners@yilozt.shell-extension.zip\")) | .browser_download_url") \
  -P /tmp
unzip /tmp/rounded-window-corners@yilozt.shell-extension.zip -d /usr/share/gnome-shell/extensions/rounded-window-corners@yilozt
