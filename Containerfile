# Atlas Containerfile

ARG BASE_IMAGE_NAME="${BASE_IMAGE_NAME:-bazzite-gnome}"
ARG IMAGE_FLAVOR="${IMAGE_FLAVOR:-''}"
ARG SOURCE_IMAGE="${SOURCE_IMAGE:-$BASE_IMAGE_NAME$IMAGE_FLAVOR}"
ARG BASE_IMAGE="ghcr.io/ublue-os/${SOURCE_IMAGE}"
ARG FEDORA_MAJOR_VERSION="${FEDORA_MAJOR_VERSION:-38}"

FROM ${BASE_IMAGE}:${FEDORA_MAJOR_VERSION} AS atlas

ARG IMAGE_NAME="${IMAGE_NAME}"
ARG FEDORA_MAJOR_VERSION="${FEDORA_MAJOR_VERSION}"

# Copy static configurations and component files.
COPY system_files /

# "yq" used in build.sh to read recipe.yml.
COPY --from=docker.io/mikefarah/yq /usr/bin/yq /usr/bin/yq

# Copy latest "cosign" to /usr/bin
COPY --from=cgr.dev/chainguard/cosign:latest /usr/bin/cosign /usr/bin/cosign

# Fonts
COPY --from=ghcr.io/ublue-os/bling:latest /files/usr/share/fonts /usr/share/fonts

# Run the build script, then clean up temp files and finalize container build.
RUN /tmp/scripts/build.sh main && \
    rm -rf /tmp/* /var/* && \
    mkdir -p /var/lib/duperemove && \
    fc-cache -f /usr/share/fonts/intel-one-mono && \
    fc-cache -f /usr/share/fonts/inter && \
    fc-cache -f /usr/share/fonts/ubuntu && \
    systemctl enable --global atlas-user-setup.service && \
    systemctl enable libvirtd.service && \
    if grep "nvidia" <<< ${IMAGE_NAME}; then \
        systemctl enable supergfxd.service \
    ; fi && \
    systemctl --global enable bazzite-user-setup.service && \
    sed -i 's/DefaultTimeoutStopSec.*/DefaultTimeoutStopSec=10s/' /etc/systemd/user.conf && \
    sed -i 's/DefaultTimeoutStopSec.*/DefaultTimeoutStopSec=10s/' /etc/systemd/system.conf && \
    ostree container commit && \
    mkdir -p /var/tmp && \
    chmod -R 1777 /var/tmp

# Surface images
FROM atlas as atlas-surface

ARG IMAGE_NAME="${IMAGE_NAME}"
ARG FEDORA_MAJOR_VERSION="${FEDORA_MAJOR_VERSION}"

COPY system_files/tmp/scripts /tmp/scripts

RUN /tmp/scripts/build.sh surface && \
    rm -rf /tmp/* /var/* && \
    mkdir -p /var/lib/duperemove && \
    ostree container commit
