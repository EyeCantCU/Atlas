set -oue pipefail

cd /tmp
wget -q https://github.com/vinceliuice/WhiteSur-cursors/archive/refs/heads/master.tar.gz
tar xf master.tar.gz

cd WhiteSur-cursors-master
. install.sh
cd ..
rm -rf WhiteSur-cursors-master
