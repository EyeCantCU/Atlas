set -oue pipefail

cd /tmp
wget -q https://gitlab.com/jomada/carl/-/archive/master/carl-master.tar.gz
tar xf carl-master.tar.gz

SRC_DIR=/tmp/carl-master

# Destination directory
AURORAE_DIR="/usr/share/aurorae/themes"
COLORSCHEMES_DIR="/usr/share/color-schemes"
GLOBAL_DIR="/usr/share/plasma/look-and-feel"
KONSOLE_DIR="/usr/share/konsole"
PLASMA_DIR="/usr/share/plasma/desktoptheme"
WALLPAPER_DIR="/usr/share/wallpapers"

THEME_NAME=Carl

[[ ! -d ${AURORAE_DIR} ]] && mkdir -p ${AURORAE_DIR}
[[ ! -d ${COLORSCHEMES_DIR} ]] && mkdir -p ${COLORSCHEMES_DIR}
[[ ! -d ${GLOBAL_DIR} ]] && mkdir -p ${GLOBAL_DIR}
[[ ! -d ${KONSOLE_DIR} ]] && mkdir -p ${KONSOLE_DIR}
[[ ! -d ${PLASMA_DIR} ]] && mkdir -p ${PLASMA_DIR}

install() {
  local name=${1}

  cp -rf ${SRC_DIR}/aurorae/${THEME_NAME}/* ${AURORAE_DIR}
  cp -rf ${SRC_DIR}/color-schemes/*.colors ${COLORSCHEMES_DIR}
  cp -rf ${SRC_DIR}/look-and-feel/${THEME_NAME}/* ${GLOBAL_DIR}
  cp -rf ${SRC_DIR}/konsole/* ${KONSOLE_DIR}
  cp -rf ${SRC_DIR}/${THEME_NAME}/* ${PLASMA_DIR}
}

echo "Installing the ${THEME_NAME} theme for the Plasma Desktop..."

install "${name:-${THEME_NAME}}"

rm -rf carl-master

echo "Install finished..."
