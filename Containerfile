ARG FEDORA_MAJOR_VERSION=38
ARG BASE_IMAGE_URL=ghcr.io/ublue-os/kinoite-nvidia

FROM ${BASE_IMAGE_URL}:${FEDORA_MAJOR_VERSION}
ARG RECIPE

# Copy static configurations and component files.
# Warning: If you want to place anything in "/etc" of the final image, you MUST
# place them in "./usr/etc" in your repo, so that they're written to "/usr/etc"
# on the final system. That is the proper directory for "system" configuration
# templates on immutable Fedora distros, whereas the normal "/etc" is ONLY meant
# for manual overrides and editing by the machine's admin AFTER installation!
# See issue #28 (https://github.com/ublue-os/startingpoint/issues/28).
COPY etc /etc
COPY usr /usr

# Copy the recipe that we're building.
COPY ${RECIPE} /usr/share/ublue-os/recipe.yml

# "yq" used in build.sh and the "setup-flatpaks" just-action to read recipe.yml.
# Copied from the official container image since it's not available as an RPM.
COPY --from=docker.io/mikefarah/yq /usr/bin/yq /usr/bin/yq

# Copy the build script and all custom scripts.
COPY scripts /tmp/scripts

# Mesa from git
RUN rpm-ostree override remove mesa-va-drivers-freeworld
RUN rpm-ostree override --experimental replace mesa-libglapi mesa-libxatracker mesa-dri-drivers mesa-libgbm mesa-libEGL mesa-libGL \
        mesa-filesystem mesa-vdpau-drivers mesa-vulkan-drivers --from repo=mesa-git
RUN rpm-ostree install mesa-va-drivers

# Run the build script, then clean up temp files and finalize container build.
RUN chmod +x /tmp/scripts/build.sh && \
        /tmp/scripts/build.sh && \
        rm -rf /tmp/* /var/* && \
        ostree container commit
