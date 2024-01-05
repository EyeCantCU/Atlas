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

COPY --from=cgr.dev/chainguard/apko:latest /usr/bin/apko /usr/bin/apko
COPY --from=cgr.dev/chainguard/melange:latest /usr/bin/melange /usr/bin/melange

# Build image
RUN wget https://raw.githubusercontent.com/EyeCantCU/browserbox/main/browserbox -O /usr/bin/browserbox && \
    wget https://github.com/docker/compose/releases/latest/download/docker-compose-linux-x86_64 -O /tmp/docker-compose && \
    install -c -m 0755 /tmp/docker-compose /usr/bin && \
    wget https://github.com/mikefarah/yq/releases/latest/download/yq_linux_amd64 -O /usr/bin/yq && \
    chmod +x /usr/bin/yq && \
    mkdir -p /var/opt && \
    ln -s /var/opt /opt && \
    /tmp/scripts/build.sh && \
    mkdir -p /usr/lib/opt && \
    cp -rf /opt/* /usr/lib/opt/ && \
    rm -rf /tmp/* /var/* /opt/* && \
    systemctl enable docker.socket && \
    systemctl enable podman.socket && \
    systemctl enable atlas-groups.service && \
    systemctl enable atlas-symlink-opt.service && \
    systemctl enable --global atlas-user-setup.service && \
    systemctl enable libvirtd.service && \
    if grep "nvidia" <<< ${IMAGE_NAME}; then \
        systemctl enable supergfxd.service \
    ; fi && \
    sed -i 's/DefaultTimeoutStopSec.*/DefaultTimeoutStopSec=10s/' /etc/systemd/user.conf && \
    sed -i 's/DefaultTimeoutStopSec.*/DefaultTimeoutStopSec=10s/' /etc/systemd/system.conf && \
    sed -i 's/dbus_notify.*/dbus_notify = false/' /usr/etc/ublue-update/ublue-update.toml && \
    echo "!include /usr/share/ublue-os/just/99-atlas.just" >> /usr/share/ublue-os/justfile && \
    mkdir -p /var/tmp && \
    chmod -R 1777 /var/tmp && \
    mkdir -p /var/lib/bluetooth && \
    chmod -R 755 /var/lib/bluetooth && \
    ostree container commit
