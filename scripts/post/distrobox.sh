set -oue pipefail

share=/usr/share
man=${share}/man
icons=${share}/icons
completions=${share}/bash-completion/completions

cd /tmp
wget https://github.com/89luca89/distrobox/archive/refs/heads/main.tar.gz
tar xvf main.tar.gz

cd distrobox-main
cp -r distrobox* /usr/bin
cp -r completions/* ${completions}
cp -r man/* ${man}
cp -r terminal-distrobox-icon.svg ${icons}
