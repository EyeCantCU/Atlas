set -oue pipefail

rpm-ostree install python3-pip
pip install --prefix=/usr lastversion
