# Mesa from git
rpm-ostree override remove mesa-va-drivers-freeworld
rpm-ostree override --experimental replace mesa-libglapi mesa-libxatracker mesa-dri-drivers mesa-libgbm mesa-libEGL mesa-libGL \
        mesa-filesystem mesa-vdpau-drivers mesa-vulkan-drivers --from repo=xxmitsu-mesa-git-fedora-38
rpm-ostree install mesa-va-drivers
