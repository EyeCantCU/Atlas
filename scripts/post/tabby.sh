set -oue pipefail

# Tabby
wget $(curl -s https://api.github.com/repos/Eugeny/tabby/releases/latest | \
  jq -r ".assets[] | select(.name | test(\"linux-x64.rpm\")) | .browser_download_url") \
  -P /tmp
rpm-ostree install /tmp/tabby-*-linux-x64.rpm
rm -f /tmp/tabby-*-linux-x64.rpm
