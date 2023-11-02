set -oue pipefail

# Install DevPod CLI
wget https://github.com/loft-sh/devpod/releases/latest/download/devpod-linux-amd64 -O /tmp/devpod
install -c -m 0755 /tmp/devpod /usr/bin
rm -rf /tmp/devpod
