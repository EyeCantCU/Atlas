#!/usr/bin/env bash

# Give flatpaks access to icons
flatpak --user override --filesystem=/home/$USER/.icons/:ro
flatpak --user override --filesystem=/usr/share/icons/:ro

# Simply launches the "yafti" GUI with the uBlue image's configuration.
/usr/bin/yafti /usr/share/ublue-os/firstboot/yafti.yml
