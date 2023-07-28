# BlueWhaleOS Containerfile

ARG BASE_IMAGE_NAME="${BASE_IMAGE_NAME:-bazzite}"
ARG IMAGE_FLAVOR="${IMAGE_FLAVOR:-''}"
ARG SOURCE_IMAGE="${SOURCE_IMAGE:-$BASE_IMAGE_NAME$IMAGE_FLAVOR}"
ARG BASE_IMAGE="ghcr.io/ublue-os/${SOURCE_IMAGE}"
ARG FEDORA_MAJOR_VERSION="${FEDORA_MAJOR_VERSION:-38}"

FROM ${BASE_IMAGE}:${FEDORA_MAJOR_VERSION} AS bluewhaleos

ARG IMAGE_NAME="${IMAGE_NAME}"
ARG FEDORA_MAJOR_VERSION="${FEDORA_MAJOR_VERSION}"

# The default recipe set to the recipe's default filename
ARG RECIPE=./recipe.yml

# Copy static configurations and component files.
COPY etc /etc
COPY usr /usr

# Copy the recipe that we're building.
COPY ${RECIPE} /usr/share/ublue-os/recipe.yml

# Image signing
COPY cosign.pub /usr/etc/pki/containers/ublue-os.pub
RUN sed -i 's/ublue-os/eyecantcu/g' /usr/etc/containers/registries.d/ublue-os.yaml

# "yq" used in build.sh to read recipe.yml.
COPY --from=docker.io/mikefarah/yq /usr/bin/yq /usr/bin/yq

# Copy latest "cosign" to /usr/bin
COPY --from=cgr.dev/chainguard/cosign:latest /usr/bin/cosign /usr/bin/cosign

# Fonts
ARG FONTS=/usr/share/fonts
COPY --from=ghcr.io/ublue-os/bling:latest /files${FONTS} ${FONTS}

# Copy the build script and all custom scripts.
COPY scripts /tmp/scripts

# Run the build script, then clean up temp files and finalize container build.
RUN chmod +x /tmp/scripts/build.sh && \
    /tmp/scripts/build.sh main && \
    rm -rf /tmp/* /var/* && \
    mkdir -p /var/lib/duperemove && \
    fc-cache -f /usr/share/fonts/intel-one-mono && \
    fc-cache -f /usr/share/fonts/inter && \
    fc-cache -f /usr/share/fonts/ubuntu && \
    systemctl enable libvirtd.service && \
    if grep "nvidia" <<< ${IMAGE_NAME}; then \
        systemctl enable supergfxd.service \
    ; fi && \
    sed -i 's/DefaultTimeoutStopSec.*/DefaultTimeoutStopSec=10s/' /etc/systemd/user.conf && \
    sed -i 's/DefaultTimeoutStopSec.*/DefaultTimeoutStopSec=10s/' /etc/systemd/system.conf && \
    ostree container commit && \
    mkdir -p /var/tmp && \
    chmod -R 1777 /var/tmp

# Surface images
FROM bluewhaleos as bluewhaleos-surface

ARG IMAGE_NAME="${IMAGE_NAME}"
ARG FEDORA_MAJOR_VERSION="${FEDORA_MAJOR_VERSION}"

COPY scripts /tmp/scripts

RUN chmod +x /tmp/scripts/build.sh && \
    /tmp/scripts/build.sh surface && \
    rm -rf /tmp/* /var/* && \
    mkdir -p /var/lib/duperemove && \
    ostree container commit
