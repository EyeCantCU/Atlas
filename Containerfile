# Atlas Containerfile

ARG SOURCE_IMAGE="${SOURCE_IMAGE:-bazzite}"
ARG BASE_IMAGE="ghcr.io/ublue-os/${SOURCE_IMAGE}"
ARG FEDORA_MAJOR_VERSION="${FEDORA_MAJOR_VERSION:-39}"

FROM ${BASE_IMAGE}:unstable AS atlas

ARG IMAGE_NAME="${IMAGE_NAME}"
ARG IMAGE_FLAVOR="${IMAGE_FLAVOR}"
ARG IMAGE_VENDOR="${IMAGE_VENDOR}"
ARG BASE_IMAGE_NAME="${BASE_IMAGE_NAME}"
ARG FEDORA_MAJOR_VERSION="${FEDORA_MAJOR_VERSION}"

# Copy system files
COPY system_files/shared system_files/${BASE_IMAGE_NAME} /

# Build image
RUN wget https://copr.fedorainfracloud.org/coprs/atim/starship/repo/fedora-$FEDORA_MAJOR_VERSION/atim-starship-fedora-$FEDORA_MAJOR_VERSION.repo -O /etc/yum.repos.d/_copr_atim-starship.repo && \
    wget https://copr.fedorainfracloud.org/coprs/karlisk/ventoy/repo/fedora-$FEDORA_MAJOR_VERSION/karlisk-ventoy-fedora-$FEDORA_MAJOR_VERSION.repo -O /etc/yum.repos.d/_copr_karlisk-ventoy.repo && \ 
    wget https://copr.fedorainfracloud.org/coprs/kylegospo/chatGPT-shell-cli/repo/fedora-$FEDORA_MAJOR_VERSION/kylegospo-chatGPT-shell-cli-fedora-$FEDORA_MAJOR_VERSION.repo -O /etc/yum.repos.d/_copr_kylegospo-chatGPT-shell-cli.repo && \
    wget https://terra.fyralabs.com/terra.repo -O /etc/yum.repos.d/terra.repo && \
    sed -i 's@enabled=0@enabeld=1@g' /etc/yum.repos.d/_copr_ublue-os-staging.repo && \
    echo '[charm]\nname=Charm\nbaseurl=https://repo.charm.sh/yum/\nenabled=1\ngpgcheck=1\ngpgkey=https://repo.charm.sh/yum/gpg.key' | \
    tee /etc/yum.repos.d/charm.repo && \
    mkdir -p /etc/pki/rpm-gpg && \
    wget https://repo.charm.sh/yum/gpg.key -O /etc/pki/rpm-gpg/RPM-GPG-KEY-charm-pubkey.gpg && \
    echo '[protonvpn-fedora-stable]\nname = ProtonVPN Fedora Stable repository\nbaseurl = https://repo.protonvpn.com/fedora-$releasever-stable\nenabled = 1\ngpgcheck = 0\nrepo_gpgcheck=0\ngpgkey = https://repo.protonvpn.com/fedora-$releasever-stable/public_key.asc' | \
    tee /etc/yum.repos.d/protonvpn.repo && \
    wget https://raw.githubusercontent.com/EyeCantCU/browserbox/main/browserbox -O /usr/bin/browserbox && \
    wget https://github.com/mikefarah/yq/releases/latest/download/yq_linux_amd64 -O /usr/bin/yq && \
    chmod +x /usr/bin/yq && \
    mkdir -p /var/opt && \
    ln -s /var/opt /opt && \
    /tmp/scripts/build.sh && \
    mkdir -p /usr/lib/opt && \
    cp -rf /opt/* /usr/lib/opt/ && \
    rm -rf /tmp/* /var/* /opt/* && \
    systemctl enable atlas-symlink-opt.service && \
    systemctl enable --global atlas-user-setup.service && \
    systemctl enable libvirtd.service && \
    if grep "nvidia" <<< ${IMAGE_NAME}; then \
        systemctl enable supergfxd.service \
    ; fi && \
    sed -i 's/DefaultTimeoutStopSec.*/DefaultTimeoutStopSec=10s/' /etc/systemd/user.conf && \
    sed -i 's/DefaultTimeoutStopSec.*/DefaultTimeoutStopSec=10s/' /etc/systemd/system.conf && \
    sed -i 's/dbus_notify.*/dbus_notify = false/' /usr/etc/ublue-update/ublue-update.toml && \
    sed -i 's@enabled=1@enabeld=0@g' /etc/yum.repos.d/_copr_ublue-os-staging.repo && \
    sed -i 's@enabled=1@enabeld=0@g' /etc/yum.repos.d/_copr_atim-starship.repo && \
    sed	-i 's@enabled=1@enabeld=0@g' /etc/yum.repos.d/_copr_karlisk-ventoy.repo && \
    sed	-i 's@enabled=1@enabeld=0@g' /etc/yum.repos.d/_copr_kylegospo-chatGPT-shell-cli.repo &&	\
    sed -i 's@enabled=1@enabeld=0@g' /etc/yum.repos.d/terra.repo && \
    sed -i 's@enabled=1@enabeld=0@g' /etc/yum.repos.d/charm.repo && \
    sed -i 's@enabled=1@enabeld=0@g' /etc/yum.repos.d/protonvpn.repo && \
    echo "!include /usr/share/ublue-os/just/99-atlas.just" >> /usr/share/ublue-os/justfile && \
    mkdir -p /var/tmp && \
    chmod -R 1777 /var/tmp && \
    mkdir -p /var/lib/bluetooth && \
    chmod -R 755 /var/lib/bluetooth && \
    ostree container commit
