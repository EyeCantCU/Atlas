#!/usr/bin/env bash

set -oue pipefail

IMAGE_INFO="/usr/share/ublue-os/image-info.json"
IMAGE_REF="ostree-image-signed:docker://ghcr.io/$IMAGE_VENDOR/$IMAGE_NAME"

if [[ -z "$IMAGE_FLAVOR" ]]; then
  IMAGE_FLAVOR="main"
else
  IMAGE_FLAVOR="nvidia"
fi

if [[ "$BASE_IMAGE_NAME" = "bazzite" ]]; then
  BASE_IMAGE_NAME="kinoite"
else
  BASE_IMAGE_NAME="silverblue"
fi

case $FEDORA_MAJOR_VERSION in
  38)
    IMAGE_TAG="latest"
    ;;
  *)
    IMAGE_TAG="$FEDORA_MAJOR_VERSION"
    ;;
esac

cat > $IMAGE_INFO <<EOF
{
  "image-name": "$IMAGE_NAME",
  "image-flavor": "$IMAGE_FLAVOR",
  "image-vendor": "$IMAGE_VENDOR",
  "image-ref": "$IMAGE_REF",
  "image-tag": "$IMAGE_TAG",
  "base-image-name": "$BASE_IMAGE_NAME",
  "fedora-version": "$FEDORA_MAJOR_VERSION"
}
EOF
