set -oue pipefail

cd /tmp

wget https://github.com/linux-surface/linux-surface/releases/download/silverblue-20201215-1/kernel-20201215-1.x86_64.rpm -O \
  surface-kernel.rpm

rpm-ostree override replace ./surface-kernel.rpm \
  --remove kernel-core \
  --remove kernel-modules \
  --remove kernel-modules-extra \
  --remove libwacom \
  --remove libwacom-data \
  --install kernel-surface \
  --install iptsd \
  --install libwacom-surface \
  --install libwacom-surface-data

rpm-ostree install surface-secureboot
