set -oue pipefail

# Tabby
cd /tmp
wget $(curl -s https://api.github.com/repos/Eugeny/tabby/releases/latest | \
  jq -r ".assets[] | select(.name | test(\"linux-x64.rpm\")) | .browser_download_url")
rpm-ostree install *linux-x64.rpm
rm -f *linux-x64.rpm
