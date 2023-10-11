set -oue pipefail

wget -O /tmp/intelmono.zip 'https://github.com/intel/intel-one-mono/releases/latest/download/ttf.zip'
unzip /tmp/intelmono.zip -d "/tmp/intelmono"
mv /tmp/intelmono/ttf "$FILES_ROOT/usr/share/fonts/intel-one-mono"

curl -sL $(curl -s https://api.github.com/repos/rsms/inter/releases | jq -r '.[0].assets[0].browser_download_url') -o /tmp/inter.zip
mkdir -p /tmp/inter /usr/share/fonts/inter
unzip /tmp/inter.zip -d /tmp/inter/
mv /tmp/inter/*.ttf /tmp/inter/*.ttc /tmp/inter/LICENSE.txt /usr/share/fonts/inter/

fc-cache -f /usr/share/fonts/intel-one-mono
fc-cache -f /usr/share/fonts/inter
fc-cache -f /usr/share/fonts/ubuntu
