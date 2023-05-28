# Latest Linux firmware
git clone git://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git /tmp/linux-firmware
rm -rf /lib/firmware/*
mv /tmp/linux-firmware/* /lib/firmware/
