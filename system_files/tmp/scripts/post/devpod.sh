set -oue pipefail

# Install DevPod
wget -q https://github.com/loft-sh/devpod/releases/latest/download/DevPod_linux_x86_64.rpm -O /tmp/devpod.rpm && \
  rpm-ostree install /tmp/devpod.rpm && \
  wget https://github.com/loft-sh/devpod/releases/latest/download/devpod-linux-amd64 -O /tmp/devpod && \
  install -c -m 0755 /tmp/devpod /usr/bin
