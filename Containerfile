# Atlas Containerfile

ARG BASE_IMAGE_NAME="${BASE_IMAGE_NAME:-kinoite}"
ARG IMAGE_FLAVOR="${IMAGE_FLAVOR:-main}"
ARG SOURCE_IMAGE="${SOURCE_IMAGE:-bazzite}"
ARG BASE_IMAGE="ghcr.io/ublue-os/${SOURCE_IMAGE}"
ARG FEDORA_MAJOR_VERSION="${FEDORA_MAJOR_VERSION:-39}"

FROM ${BASE_IMAGE}:${FEDORA_MAJOR_VERSION} AS atlas

ARG IMAGE_NAME="${IMAGE_NAME}"
ARG IMAGE_FLAVOR="${IMAGE_FLAVOR}"
ARG IMAGE_VENDOR="${IMAGE_VENDOR}"
ARG BASE_IMAGE_NAME="${BASE_IMAGE_NAME}"
ARG FEDORA_MAJOR_VERSION="${FEDORA_MAJOR_VERSION}"

# Copy static configurations and component files.
COPY system_files/shared system_files/${BASE_IMAGE_NAME} /

# Run the build script, then clean up temp files and finalize container build.
RUN wget https://github.com/mikefarah/yq/releases/latest/download/yq_linux_amd64 -O /usr/bin/yq && \
    chmod +x /usr/bin/yq && \
    /tmp/scripts/build.sh main && \
    rm -rf /tmp/* /var/* && \
    mkdir -p /var/lib/duperemove && \
    systemctl enable --global atlas-user-setup.service && \
    systemctl enable libvirtd.service && \
    if grep "nvidia" <<< ${IMAGE_NAME}; then \
        systemctl enable supergfxd.service \
    ; fi && \
    sed -i 's/DefaultTimeoutStopSec.*/DefaultTimeoutStopSec=10s/' /etc/systemd/user.conf && \
    sed -i 's/DefaultTimeoutStopSec.*/DefaultTimeoutStopSec=10s/' /etc/systemd/system.conf && \
    sed -i 's/dbus_notify.*/dbus_notify = false/' /usr/etc/ublue-update/ublue-update.toml && \
    echo "!include /usr/share/ublue-os/just/99-atlas.just" >> /usr/share/ublue-os/justfile && \
    ostree container commit && \
    mkdir -p /var/tmp && \
    chmod -R 1777 /var/tmp
