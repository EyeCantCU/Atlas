set -oue pipefail

cd /tmp
lastversion --assets --filter opengamepadui.tar.gz download https://github.com/ShadowBlip/OpenGamepadUI
tar xvfz opengamepadui.tar.gz
cd opengamepadui
sudo make install PREFIX=/usr
